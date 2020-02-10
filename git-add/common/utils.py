import gettext
import os
import subprocess
import sys
import zipfile

from inginious import feedback, input

def init_translations():
    """
        Initialize gettext and translate to the proper language
    """
    lang = input.get_lang()
    try:
        trad = gettext.GNUTranslations(open("./common/" + lang + ".mo", "rb"))
    except FileNotFoundError:
        trad = gettext.NullTranslations()
    trad.install()
    return trad.gettext

_ = init_translations()

def remove_git_perm_checks(cwd=".", local=True):
    cmd = ["git", "config"]
    if not local:
        cmd.append("--global")
    cmd.extend(["core.fileMode", "false"])
    pid = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, cwd=cwd)
    out, err = pid.communicate()
    if pid.wait() != 0:
        print("Cannot change perms\n%s\n[stdout]\n%s\n[stderr]\n%s" % (" ".join(cmd), out, err))
        sys.exit(-1)


def unzip_solution(task_id):
    archive = os.path.join("solutions", task_id + ".zip")
    try:
        zip_ref = zipfile.ZipFile(archive, 'r')
    except zipfile.BadZipFile:
        feedback.set_problem_result("failed", task_id)
        feedback.set_problem_feedback(_("L'archive soumise n'est pas un zip"), task_id)
        return None

    dst = os.path.join("solutions", task_id)
    try:
        # Extract
        name_list = list(map(lambda x: os.path.normpath(x), zip_ref.namelist()))
        root_folders = list(filter(lambda x: x != "__MACOSX", set(map(lambda x: x.split("/")[0], name_list))))
        zip_ref.extractall(dst)
    finally:
        zip_ref.close()

    return os.path.join(dst, root_folders[0])


def unzip_task(task_id, expected_subpaths=()):
    archive = task_id + ".zip"
    with open(archive, "wb") as fileobj:
        data = input.get_input(task_id)
        fileobj.write(data)

    try:
        zip_ref = zipfile.ZipFile(archive, 'r')
    except zipfile.BadZipFile:
        feedback.set_problem_result("failed", task_id)
        feedback.set_problem_feedback(_("L'archive soumise n'est pas un zip"), task_id)
        return None

    try:
        # Check the presence of only one root folder
        name_list = list(map(lambda x: os.path.normpath(x), zip_ref.namelist()))
        root_folders = list(filter(lambda x: x != "__MACOSX", set(map(lambda x: x.split("/")[0], name_list))))
        if len(root_folders) == 0:
            feedback.set_problem_result("failed", task_id)
            feedback.set_problem_feedback(_("L'archive soumise est vide"), task_id)
            return None
        elif len(root_folders) > 1:
            feedback.set_problem_result("failed", task_id)
            feedback.set_problem_feedback(_("Votre archive doit contenir un seul dossier à la racine"
                                            " qui contient votre soumission"), task_id)
            return None

        # If some folders/files are expected, check their presence in the archive
        for expected_subpath in expected_subpaths:
            path = os.path.join(root_folders[0], os.path.normpath(expected_subpath))
            try:
                next(filter(lambda x: x == path, name_list))
            except StopIteration:
                feedback.set_problem_result("failed", task_id)
                feedback.set_problem_feedback(_("Votre archive ne contient pas le dossier '%s'") % path, task_id)
                return None

        # Extract
        zip_ref.extractall(task_id)
    finally:
        zip_ref.close()

    return os.path.join(task_id, root_folders[0])
