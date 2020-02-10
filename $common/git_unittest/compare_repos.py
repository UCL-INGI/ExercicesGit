import difflib
import os
import unittest

from git import Repo, InvalidGitRepositoryError
from git.compat import defenc
from git.util import finalize_process

from utils import _


class GitComparison(unittest.TestCase):
    repo = None
    repo_path = ""
    student_repo_path = ""
    repo_student = None
    longMessage = False
    diff = difflib.Differ()

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.test_descriptions = {
            self.test_bare.__name__: _("""Test du type de repo"""),
            self.test_ignored_files.__name__:
                _("""Test des fichiers ignorés"""),
            self.test_untracked_files.__name__:
                _("""Test des fichiers non traqués"""),
            self.test_unstaged_changes.__name__:
                _("""Test des modifications du working directory pour les fichiers traqués"""),
            self.test_staged_changes.__name__:
                _("""Test des modifications dans la staging zone"""),
            self.test_branch_names.__name__: _("""Test des branches"""),
            self.test_history.__name__: _("""Test de l'historique"""),
        }

    @classmethod
    def setUpClass(cls):

        if not os.path.isdir(cls.repo_path) or not os.path.isdir(cls.student_repo_path):
            raise ValueError(_("Impossible de trouver le dossier '%s' ou '%s'")
                             % (cls.repo_path, cls.student_repo_path))

        try:
            cls.repo = Repo(cls.repo_path)
            cls.repo.config_writer().set_value("core", "autocrlf", "true")
        except InvalidGitRepositoryError:
            raise ValueError(_("Le dossier qui est censé contenir la solution de l'exercice n'est pas"
                               " un repository git. Contactez l'auteur de la tâche pour le lui signaler."))
        try:
            cls.repo_student = Repo(cls.student_repo_path)
            cls.repo_student.config_writer().set_value("core", "autocrlf", "true")
        except InvalidGitRepositoryError:
            cls.repo_student = None

    def setUp(self) -> None:
        self.assertIsNotNone(self.repo_student, _("Le dossier que vous avez soumis ne contient pas de repository git"))

    def test_bare(self):
        # Check if both bare or both not bare
        self.assertTrue(self.repo.bare == self.repo_student.bare or not self.repo.bare,
                        _("Le repo que vous avez soumis doit être le clone et non le repo distant"))
        self.assertTrue(self.repo.bare == self.repo_student.bare or self.repo.bare,
                        _("Le repo que vous avez soumis doit être le repo distant et non le clone"))

    def test_ignored_files(self):
        if not self.repo.bare:
            repo_ignored = self._get_ignored_files(self.repo)
            student_repo_ignored = self._get_ignored_files(self.repo_student)
            for file in repo_ignored:
                self.assertTrue(os.path.exists(os.path.join(self.student_repo_path, file)),
                                _("Le fichier '%s' ne devrait pas être supprimé du working directory,"
                                  " seulement ignoré") % file)
                self.assertIn(file, student_repo_ignored,
                              _("Le fichier '%s' devrait être dans la liste des fichiers ignorés") % file)

            for file in student_repo_ignored:
                self.assertIn(file, repo_ignored,
                              _("Le fichier '%s' ne devrait pas être dans la liste des fichiers ignorés") % file)

    @staticmethod
    def _get_ignored_files(repo, *args, **kwargs):
        # Adaptation of git.base.Repo._get_untracked_files of GitPython

        # Make sure we get all files, not only ignored directories
        proc = repo.git.status(*args,
                               porcelain=True,
                               untracked_files=True,
                               as_process=True,
                               ignored=True,
                               **kwargs)
        # Ignored files prefix in porcelain mode
        prefix = "!! "
        ignored_files = []
        for line in proc.stdout:
            line = line.decode(defenc)
            if not line.startswith(prefix):
                continue
            filename = line[len(prefix):].rstrip('\n')
            # Special characters are escaped
            if filename[0] == filename[-1] == '"':
                filename = filename[1:-1]
                filename = filename.encode('ascii').decode('unicode_escape').encode('latin1').decode(defenc)
            ignored_files.append(filename)
        finalize_process(proc)
        return ignored_files

    def test_untracked_files(self):

        if not self.repo.bare:
            # Check that the untracked files are identical
            for file in self.repo.untracked_files:
                self.assertIn(file, self.repo_student.untracked_files,
                              _("Le fichier '%s' devrait être dans la liste des fichiers non traqués") % file)

            for file in self.repo_student.untracked_files:
                self.assertIn(file, self.repo.untracked_files,
                              _("Le fichier '%s' ne devrait pas être dans la liste des fichiers non traqués") % file)

    @staticmethod
    def diff2str(diff):
        """Changes diff string formatting to be rst-compatible"""
        diff_str = str(diff)
        diff_str = diff_str.replace("\n---", _("\n\n::\n\n"), 1)
        diff_str = diff_str.replace("\nlhs", _("\n\nAvant")).replace("\nrhs", _("\n\nAprès"))
        diff_str = diff_str.replace("\nfile added in rhs", "")
        diff_str = diff_str.replace("\nfile deleted in rhs", _("\n\n::\n\nFichier supprimé"))
        diff_str = diff_str.replace("\nfile renamed from ", _("\n\n::\n\nFichier renommé, à l'origine "))
        diff_str = diff_str.replace("\nfile renamed to ", _("\n\n::\n\nFichier renommé en "))
        diff_str = diff_str.replace("\nOMITTED BINARY DATA", _("\n\n::\n\nDonnées binaires omises"))

        double_colon_idx = diff_str.find("::")
        diff_str = diff_str[:double_colon_idx] + diff_str[double_colon_idx:].replace("\n", "\n   ")

        return diff_str

    def test_unstaged_changes(self):

        if not self.repo.bare:
            # Check that the unstaged changes are identical
            for diff in self.repo.index.diff(None, create_patch=True):
                self.assertIn(diff, self.repo_student.index.diff(None, create_patch=True),
                              (_("La modification suivante devrait être dans le working directory")
                               + "\n\n%s" % self.diff2str(diff)))

            for diff in self.repo_student.index.diff(None, create_patch=True):
                self.assertIn(diff, self.repo.index.diff(None, create_patch=True),
                              (_("La modification suivante ne devrait pas être dans le working directory")
                               + "\n\n%s" % self.diff2str(diff)))

    def test_staged_changes(self):

        if not self.repo.bare:
            # Check that the staged changes are identical
            for diff in self.repo.index.diff("HEAD", create_patch=True, R=True):
                self.assertIn(diff, self.repo_student.index.diff("HEAD", create_patch=True, R=True),
                              (_("La modification suivante devrait être dans la staging zone")
                               + "\n\n%s" % self.diff2str(diff)))

            for diff in self.repo_student.index.diff("HEAD", create_patch=True, R=True):
                self.assertIn(diff, self.repo.index.diff("HEAD", create_patch=True, R=True),
                              (_("La modification suivante ne devrait pas être dans la staging zone")
                               + "\n\n%s" % self.diff2str(diff)))

    def test_branch_names(self):
        for branch in self.repo.heads:
            self.assertIn(branch, self.repo_student.heads, (_("La branche '%s' devrait exister") % branch.name))
        for branch in self.repo_student.heads:
            self.assertIn(branch, self.repo.heads, (_("La branche '%s' ne devrait pas exister") % branch.name))

        try:
            self.assertEqual(self.repo.active_branch, self.repo_student.active_branch,
                             (_("La branch active devrait être '%s'") % self.repo.active_branch.name))
        except TypeError:
            self.fail(_("HEAD est détachée et ne pointe pas vers une branche"))

    def test_history(self):
        # XXX It does not check commit hashes because added commits will have different dates or author
        # and therefore a different hash
        for branch in self.repo.heads:
            if branch not in self.repo_student.heads:
                continue
            student_commits = reversed(list(self.repo_student.iter_commits(branch.name)))
            commits = reversed(list(self.repo.iter_commits(branch.name)))
            for commit in commits:
                try:
                    student_commit = next(student_commits)
                    self.assertEqual(commit.message.strip(), student_commit.message.strip(),
                                     (_("Le message du commit '%s' n'est pas celui attendu:"
                                        "\n\nAttendu:\n\n::\n\n%s\n\nReçu:\n\n::\n\n%s")
                                      % (student_commit.binsha.hex(),
                                         "    " + commit.message.strip().replace("\n", "\n    "),
                                         "    " + student_commit.message.strip().replace("\n", "\n    "))))
                except StopIteration:
                    self.fail(_("Les commits déjà présents dans la branche '%s' sont corrects"
                                " mais il y a plus de commits dans la solution que dans votre soumission")
                              % branch.name)

                tree = commit.tree
                tree_student = student_commit.tree
                self.compare_trees(branch, student_commit, tree, tree_student)

            try:
                next(student_commits)
                self.fail(_("Vous avez trop des commits dans l'historique par rapport à la solution attendue"))
            except StopIteration:
                pass

    def compare_trees(self, branch, student_commit, tree, student_tree):
        # Check blobs
        for blob in tree.blobs:
            try:
                student_blob = next(filter(lambda x: x.name == blob.name, student_tree.blobs))
                self.compare_blobs(branch, student_commit, blob, student_blob)
            except StopIteration:
                self.fail(_("Impossible de trouver une modification faite au fichier '%s'"
                            " dans le commit '%s' de la branche '%s'")
                          % (blob.path, student_commit.hexsha, branch.name))
        for student_blob in student_tree.blobs:
            try:
                blob = next(filter(lambda x: x.name == student_blob.name, tree.blobs))
            except StopIteration:
                self.fail(_("La modification faite au fichier '%s' ne devrait pas se trouver"
                            " dans le commit '%s' de la branche '%s'")
                          % (student_blob.path, student_commit.hexsha, branch.name))

        # Check subtrees
        for student_subtree in student_tree.trees:
            try:
                subtree = next(filter(lambda x: x.name == student_subtree.name, tree.trees))
            except StopIteration:
                self.fail(_("La modification faite au dossier '%s' ne devrait pas se trouver"
                            " dans le commit '%s' de la branche '%s'")
                          % (student_subtree.path, student_commit.hexsha, branch.name))
        for subtree in tree.trees:
            try:
                student_subtree = next(filter(lambda x: x.name == subtree.name, student_tree.trees))
                self.compare_trees(branch, student_commit, subtree, student_subtree)
            except StopIteration:
                self.fail(_("Impossible de trouver une modification faite au fichier '%s'"
                            " dans le commit '%s' de la branche '%s'")
                          % (subtree.path, student_commit.hexsha, branch.name))

    @classmethod
    def blob_str(cls, blob, student_blob):
        try:
            str_blob = cls.blob_strip(blob).decode("utf-8")
            str_student_blob = cls.blob_strip(student_blob).decode("utf-8")
            comparison = difflib.ndiff(str_blob.split("\n"), str_student_blob.split("\n"))
            return "    " + "\n".join(comparison).replace("\n", "\n    ")
        except UnicodeDecodeError:
            return _("Contenu non décodable en utf-8")

    @staticmethod
    def blob_strip(blob):
        try:
            return blob.decode("utf-8").strip().encode("utf-8")
        except UnicodeDecodeError:
            return blob

    def compare_blobs(self, branch, student_commit, blob, student_blob):
        blob_data = blob.data_stream[3].read()
        student_blob_data = student_blob.data_stream[3].read()

        self.assertEqual(self.blob_strip(blob_data), self.blob_strip(student_blob_data),
                         _("La version du fichier '%s' dans le commit '%s' de la branche '%s'"
                           " n'est pas celui attendu. Voici un diff entre la bonne version"
                           " et celle que vous avez soumise:\n\n::\n\n%s")
                         % (blob.path, student_commit.binsha.hex(), branch.name,
                            self.blob_str(blob_data, student_blob_data)))
