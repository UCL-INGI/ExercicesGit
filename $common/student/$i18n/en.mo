��    T      �              \  6   ]     �     �     �  %   �     �              $  �  A  �  �  �  �  �  �  �  \  p  ,#  �  �(  C   O/     �/     �/     �/     �/     �/  .   �/  )   0  .   90     h0  E   �0  4   �0  '   �0     &1     (1  %   61  -   \1  c   �1     �1  "   	2  #   ,2     P2  &   p2  f   �2  f   �2  ;   e3  @   �3  B   �3  G   %4  �   m4  A   5  �   W5  A   �5  E   )6  H   o6  L   �6  V   7  T   \7  G   �7  G   �7  �   A8     �8     �8     �8  6   9  �   ?9     �9     �9  �   �9  �  �:  �  �<  �  c>  w  PA  E  �C  �  F  C  �H  �  3K  V   �M  -   JN  r  xN  P   �O  9   <P     vP     {P  $   P     �P  5   �P  �  �P  6   lR     �R     �R     �R  "   �R     �R     S     S    "S  {  ?U  �  �Z  �  c_  a  c  g  �h    �n  c  �s  /   [z  
   �z     �z     �z     �z     �z  "   �z     �z  "   {     6{  :   N{  4   �{     �{     �{     �{      �{  *   |  h   6|     �|  '   �|      �|     }      $}  ]   E}  [   �}  8   �}  =   8~  <   v~  A   �~  �   �~  >   �  �   �  9   \�  <   ��  =   Ӏ  @   �  W   R�  _   ��  M   
�  M   X�  �   ��     *�  
   8�     C�  0   c�  X   ��     �     	�  �   &�  �  ʄ  �  y�  �  3�  R  ��    K�  �  k�    Q�  �  i�  T   �  -   C�  K  q�  .   ��  9   �     &�     +�     /�     O�  5   S�   

-----------------

Repo distant

-----------------

 

::

 

::

Données binaires omises 

::

Fichier renommé en  

::

Fichier renommé, à l'origine  

::

Fichier supprimé 

Après 

Avant .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>
 .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

Cet exercice vous montre comment synchroniser votre historique local
avec un historique sur serveur distant (sur `Github <https://github.com>`_, `Bitbucket <https://bitbucket.org>`_ ou autre).

Dans cet exemple, vous avez deux branches, une branche locale ``master``
et sa copie distante sur ``origin`` (un alias pour votre repository distant).
Le dernier commit est dans l'historique local mais pas dans celui distant.

.. image:: https://inginious.org/course/git/git-push/git-before-push.svg

Si vous synchronizez les deux branches, vous allez ramener la référence de la branche ``master``
distante sur le même commit que celui de la branche locale:

.. image:: https://inginious.org/course/git/git-push/git-after-push.svg

Push des modifications locales sur l'historique distant se fait avec ``git push`` (voir `documentation <https://help.github.com/articles/pushing-to-a-remote/>`_). .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

Dans cet exercice vous allez devoir sélectionner des changements à rajouter dans la ``staging area``.

Vous pouvez utiliser la commande ``git add file [other-files...]`` pour cela.
Vous pouvez l'utiliser avec l'option ``-p``
pour sélectionner une partie des modifications à l'intérieur d'un fichier.

Pour regarder ce qui se trouve dans la ``staging area``,
vous pouvez utiliser la commande ``git status``.
Les fichiers en verts sont les fichiers dans la ``staging area``.
``git diff --cached`` vous donnera les modifications exactes qui s'y trouve.

Vous pouvez également utiliser des outils graphiques tels que Sourcetree_ ou GitKraken_.

.. _Sourcetree: https://www.sourcetreeapp.com/
.. _GitKraken: https://www.gitkraken.com/
 .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

Dans cet exercice, vous devez créer un ``commit`` avec les changements déjà présents dans la ``staging area``.

L'outil en ligne de commande pour créer des commits est ``git commit [-m message]``
(voir `documentation <https://git-scm.com/docs/git-commit>`_).

Vous pouvez également utiliser des outils graphiques tels que Sourcetree_ ou GitKraken_.

.. _Sourcetree: https://www.sourcetreeapp.com/
.. _GitKraken: https://www.gitkraken.com/
 .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

Dans un `exercice précédent <https://inginious.org/course/git/git_catastrophy_scenario_1>`_,
vous avez dû annuler un commit non-pushé.

Vous pourriez être tenté de changer l'historique distant mais c'est généralement une mauvaise idée
quand vous travaillez avec plusieurs personnes car ça risque d'**écraser** les modifications
sur leur propre copie.
Donc vous ne devriez pas utiliser ``reset`` dans ce cas mais uniquement ``revert``.
En effet, ce dernier va rajouter un commit supplémentaire mais ne va pas supprimer les anciens commits.

On va donc passer de

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_2/git-error.svg

à

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_2/git-revert.svg

Vous pouvez ensuite pusher ces modifications sur l'historique distant:

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_2/git-push.svg
 .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

Dans vos projets de groupe, si vous être plusieurs à impléménter des fonctionnalités différentes,
vous risquez de vous marcher sur les pieds et d'arriver à un code qui ne fonctionnera jamais
si chacun pousse du code incomplet.

Pour éviter ce genre de problèmes, la majorité des développeur utilisent des ``feature branches``.
Une branche est un pointeur vers une chaîne linéaire de commits dans l'historique.

Dans l'exemple ci-dessous pourrait représenter un historique d'une application:

.. image:: https://inginious.org/course/git/git_branches/git-branches.svg

Le login est déjà implémenté et stable mais deux membres de groupes sont en train d'implémenter le menu
et le profil utilisateur.
Et ces deux fonctionalités ne sont ni terminées, ni testées.
Utiliser une branche séparée permet de sauvegarder votre travail sans compromettre le code qui a été testé (sur la branche ``master``).
Quand le menu est prêt, vous pourrez fusionner la branche avec la branche master.

``git branch`` ne vous permet que de créer une branche locale.
Pour créer la branche distante correspondante,
il faut la ``push`` comme vous l'avez fait précédemment pour la branche ``master``. .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

Imaginons que vous avez été imprudent en utilisant ``git reset --hard``
et que vous avez écrasé votre historique distant avec ``git push --force``.

Vous n'avez donc plus vos modifications dans le code, dans la ``staging zone``,
dans votre historique local ou dans votre historique distant.
Néanmoins, c'est rattrapable tant que vous n'avez pas supprimé le dossier ``.git``
de votre projet !

Pour cela vous devez utilisez les ``reference logs``, accessible avec ``git reflog``.
Ces logs contiennent tous les changements faits sur toutes les branches de votre historique.
Vous pouvez donc récupérer tous les commits que vous avez écrasés.
Une fois que vous avez identifié le point auquel vous voulez revenir,
il suffit d'utiliser ``git merge`` pour replacer les modifs dans votre repo
(et un traditionnel ``git push`` pour le repo distant). .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

Quand vous travaillez à plusieurs, il est possible que des commits soient présents
sur le repository mais pas sur votre historique local. Comme ceci:

.. image:: https://inginious.org/course/git/git-pull/git-before-pull.svg

Vous devrez ``pull`` les modifications distantes sur votre branche principale.
Comme vous n'avez aucun commit local qui ne trouve pas déjà dans la copie distante,
``pull`` va juste mettre à jour la branche locale.

.. image:: https://inginious.org/course/git/git-pull/git-after-pull.svg

Maintenant imaginons que vous avez un commit local non poussé sur la copie distante:

.. image:: https://inginious.org/course/git/git-pull/git-before-pull-2.svg

A ce moment, si vous utiliser ``pull``, git va vous créer un commit supplémentaire
qui fusionne les deux branches.

.. image:: https://inginious.org/course/git/git-pull/git-after-pull-2.svg

Vous devrez ``push`` le nouveau commit sur la copie distante pour achever la synchronisation.

.. image:: https://inginious.org/course/git/git-pull/git-after-push-2.svg

La commande correspondante est ``git pull``
(voir `documentation <https://help.github.com/articles/fetching-a-remote/#pull>`_).
 ... Erreur imprévue, merci de la signaler à l'auteur de la tâche Bien joué ! Bonne réponse Contenu non décodable en utf-8 E Erreur interne Git: Ajouter des fichiers dans la staging area Git: Ajouter des fichiers à l'historique Git: Choisir les fichiers que l'on synchronise Git: Explorer l'historique Git: Push les modifications de l'historique sur le repository distant Git: Syncroniser la copie locale avec celle distante Git: Utiliser plusieurs branches en git I Ignoré {0!r} Il y a des erreurs dans vos réponses Impossible de trouver le dossier '%s' ou '%s' Impossible de trouver une modification faite au fichier '%s' dans le commit '%s' de la branche '%s' L'archive soumise est vide L'archive soumise n'est pas un zip La branch active devrait être '%s' La branche '%s' devrait exister La branche '%s' ne devrait pas exister La modification faite au dossier '%s' ne devrait pas se trouver dans le commit '%s' de la branche '%s' La modification faite au fichier '%s' ne devrait pas se trouver dans le commit '%s' de la branche '%s' La modification suivante devrait être dans la staging zone La modification suivante devrait être dans le working directory La modification suivante ne devrait pas être dans la staging zone La modification suivante ne devrait pas être dans le working directory La version du fichier '%s' dans le commit '%s' de la branche '%s' n'est pas celui attendu. Voici un diff entre la bonne version et celle que vous avez soumise:

::

%s Le dossier que vous avez soumis ne contient pas de repository git Le dossier qui est censé contenir la solution de l'exercice n'est pas un repository git. Contactez l'auteur de la tâche pour le lui signaler. Le fichier '%s' devrait être dans la liste des fichiers ignorés Le fichier '%s' devrait être dans la liste des fichiers non traqués Le fichier '%s' ne devrait pas être dans la liste des fichiers ignorés Le fichier '%s' ne devrait pas être dans la liste des fichiers non traqués Le fichier '%s' ne devrait pas être supprimé du working directory, seulement ignoré Le message du commit '%s' n'est pas celui attendu:

Attendu:

::

%s

Reçu:

::

%s Le repo que vous avez soumis doit être le clone et non le repo distant Le repo que vous avez soumis doit être le repo distant et non le clone Les commits déjà présents dans la branche '%s' sont corrects mais il y a plus de commits dans la solution que dans votre soumission Mathieu Jadin Mauvaise réponse Repo local

-----------------

 Scénario Catastrophe Git 2 - Annuler un commit pushé Scénario Catastrophe Git 3 - Récupérer le code après avoir supprimé les modifs de votre code, de l'historique local et distant Trouver l'auteur d'une ligne Trouver un commit par message Trouvez l'identifiant du commit avec pour message "Even I can change the readme file" dans le `repository <https://inginious.org/course/git/git-log/git-find-log.zip>`_ ? Téléchargez l'`archive <https://inginious.org/course/git/git-add/git-add.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Ajouter uniquement les fichiers `to_stag.txt` et `to_stag_2.txt` à la ``staging area``. Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Votre soumission devra avoir l'architecture suivante:

::

    git-add/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Téléchargez l'`archive <https://inginious.org/course/git/git-commit/git-commit.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Committez le fichier `to_commit.txt` avec le message "Commit message". Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Votre soumission devra avoir l'architecture suivante:

::

    git-commit/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Téléchargez l'`archive <https://inginious.org/course/git/git-gitignore/git-gitignore.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`.
Ajoutez un fichier ``.gitignore`` pour empêchez la synchronisation des fichiers binaires
(càd se terminant par .o, .javac), les fichiers de config d'un IDE Jetbrains
(dans le dossier ./idea).
Pour l'exercice, ce fichier doit se trouver dans le ``working directory``, donc ne le déplacez pas dans la ``staging zone`` ou l'historique.

Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Votre soumission devra avoir l'architecture suivante:

::

    git-gitignore/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]

 Téléchargez l'`archive <https://inginious.org/course/git/git-pull/git-pull.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Synchroniser-le avec son repository distant. Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Le message de commit de fusion devra être "MERGE".

Notez que le repository "distant" dans cet exercice n'est pas sur github ou dans bitbucket mais dans le dossier `bare.git` de l'archive.

Votre soumission devra avoir l'architecture suivante:

::

    git-pull/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Téléchargez l'`archive <https://inginious.org/course/git/git-push/git-push.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Poussez les changements locaux sur la copie distante. Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Notez que la copie distante dans cet exercice n'est pas sur github ou dans bitbucket mais dans le dossier `bare.git` de l'archive.

Votre soumission devra avoir l'architecture suivante:

::

    git-push/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Téléchargez l'`archive <https://inginious.org/course/git/git_branches/git-branch.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`.
Vous devez faire en sorte que les historiques locaux et distants correspondent
à l'image de l'énoncé. Partez du principe que les commits *Starting profile* et *Starting menu* créent
chacun un fichier vide, respectivement profile.txt et menu.txt.

Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Notez que le repository "distant" dans cet exercice n'est pas sur github ou dans bitbucket mais dans le dossier `bare.git` de l'archive.

::

    git-branch/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...] Téléchargez l'`archive <https://inginious.org/course/git/git_catastrophy_scenario_2/git-revert-remote.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Utilisez un ``revert`` pour annuler le dernier commit et pushez l'historique sur le repository distant. Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Le message de commit devra être "REVERT".

Votre soumission devra avoir l'architecture suivante:

::

    git-revert-remote/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Téléchargez l'`archive <https://inginious.org/course/git/git_catastrophy_scenario_3/git-reflog.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Votre repo a des historiques locaux et distants avec juste un commit suite à une mauvaise commande.
Utilisez ``reflog`` pour retrouver tous les commits effacés
et pusher-les sur le repository distant.

Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Notez que le repository "distant" dans cet exercice n'est pas sur github ou dans bitbucket mais dans le dossier `bare.git` de l'archive.

::

    git-reflog/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...] Votre archive doit contenir un seul dossier à la racine qui contient votre soumission Votre archive ne contient pas le dossier '%s' Vous avez repéré qu'un de vos collègues fait une erreur dans son travail
et vous souhaitez lui faire part de votre mécontentement ?
Rien de plus facile avec ``git blame``.

Pouvez-vous l'utiliser pour identifier l'email de la personne qui a écrit la ligne 3 du fichier ``runme.sh`` dans le `repository <https://inginious.org/course/git/git-log/git-find-log.zip>`_ ? Vous avez trop des commits dans l'historique par rapport à la solution attendue [LELEC2103] Project in electricity 3 : Electronic systems test ✔ ✔ Le test a échoué comme attendu ✘ ✘ Le test a réussi alors qu'il aurait dû échouer Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: EMAIL@ADDRESS
POT-Creation-Date: 2020-02-04 14:51+0100
PO-Revision-Date: 2020-02-04 09:41+0100
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 

-----------------

Distant repo

-----------------

 

::

 

::

Binary data omitted 

::

File renamed to  

::

File renamed, at the origin  

::

Deleted file 

After 

Before .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>
 .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

This exercise will show you how to synchronize your local history
with an history hosted on a remote server (on `GitHub <https://github.com>`_, `Bitbucket <https://bitbucket.org>`_, etc ).

In this example, you have two branches, one local branch ``master``
and its copy on ``origin`` (which is an alias for your remote repository ).
The last commit is in the local history but not in the remote one.

.. image:: https://inginious.org/course/git/git-push/git-before-push.svg

If you synchronize both branches, you will bring the reference of the remote ``master``
branch to the same commit as the one of the local branch:

.. image:: https://inginious.org/course/git/git-push/git-after-push.svg

Pushing these modifications onto the remote history can be achieved with ``git push`` (voir `documentation <https://help.github.com/articles/pushing-to-a-remote/>`_). .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

In this exercice, you will  need to select changes to add to the ``staging area``.

You will  need to use the command ``git add file [other-files...]``.
You may use it with the option ``-p``
to select only a subset of the modifications inside a single filde.

To see what is already inside the ``staging area``,
you may use the command ``git status``.
The files highligted in green are in the ``staging area``.
``git diff --cached`` indicate the precise modifications that have been staged.

You may also use graphical tools such as Sourcetree_ or GitKraken_.

.. _Sourcetree: https://www.sourcetreeapp.com/
.. _GitKraken: https://www.gitkraken.com/
 .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

In this exercise, you will have to create a ``commit`` with the changes already present in the ``staging area``.

The command line tool to create new commits is ``git commit [-m message]``
(see the `documentation <https://git-scm.com/docs/git-commit>`_).

You may also use graphical tools such as Sourcetree_ or GitKraken_.

.. _Sourcetree: https://www.sourcetreeapp.com/
.. _GitKraken: https://www.gitkraken.com/
 .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

In a previous exercice <https://inginious.org/course/git/git_catastrophy_scenario_1>_,
you had to cancel an unpushed commit.

Although you might be tempted to change the history of a reposistory, this is generally a bad idea
when you work with several people because this may d'**erase** modifications they made
on their own copy.
In this case, you should not use ``reset`` but only ``revert``.
Indeed, the latter adds a new commit that reverts the previous ones but do not delete them.

We want to move from

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_2/git-error.svg

to

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_2/git-revert.svg

You may then push these modifications to the remote repository:

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_2/git-push.svg
 .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

During groupworks, when you are several people to implement different features, you may risk to modify together parts of the same code, which will cause the application to fail if each member pushes its changes independently.

To avoid such issues, the majority of Git users use ``feature branches``.
A branch is a pointer towards a linear chain of commits in the history.

The following exemple represents the history of an application:

.. image:: https://inginious.org/course/git/git_branches/git-branches.svg

The login feature is already implemented but two members of the group are now implementing the menu feature
and the user profile.
These two features are not finished, nor tested.
Using a separated branch allows to save your work without altering the code that has already been tested (in the branch master ``master``).
Once your feature in development is ready, you can merge the feature branch with the branch master.

``git branch`` allows you to create a local branch.
To create the corresponding remote branch,
you need to `push` it as you did it before for the branch ``master``. .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

You have been careless when using ``git reset --hard``
and you then erase the remote history with ``git push --force``.

The modifications you made are no longer in the ``staging zone``,
neither locally nor remotely.
However, you can fetch your modifications back as long as you did not delete the folder ``.git``
of your project!

To do this, you need to modify the  ``reference logs``, accessible using ``git reflog``.
These logs contain all the changes made on all branches in your history.
You may thus get back all the commits that you erased.
Once you identified the reference you want to get back to,
you may use ``git merge`` to back up the modifications in your repository
(and use ``git push`` to push these changes to the remote repository). .. raw:: html

  <script defer>

  bodyHeight = 0;
  function postSize() {
      if (document.body.scrollHeight != bodyHeight) {
          bodyHeight = document.body.scrollHeight;
          window.parent.postMessage({height: document.body.scrollHeight}, "*");
      }
  };
  var target = document.querySelector('body');

  var observer = new MutationObserver(postSize);

  var config = { attributes: true, subtree: true }

  observer.observe(target, config);
  $(document).ready(function(){
      setTimeout(postSize, 0);
  });
  </script>

When you work in a team, it might happen that new commits are present in the repository
but not in your local history, such as:

.. image:: https://inginious.org/course/git/git-pull/git-before-pull.svg

You need to ``pull`` the distant modifications to your main branch
.As you have no local commit that is not present in the distant branch
``pull`` only updates the local branch.

.. image:: https://inginious.org/course/git/git-pull/git-after-pull.svg

Now, let's imagine that you have a local commit unpushed to the distant copy:

.. image:: https://inginious.org/course/git/git-pull/git-before-pull-2.svg

If you use ``pull``, git will automatically create an additional commit
that will merge both branchs together.

.. image:: https://inginious.org/course/git/git-pull/git-after-pull-2.svg

You then need to ``push`` the new commit onto the distant branch to finish the synchronization.

.. image:: https://inginious.org/course/git/git-pull/git-after-push-2.svg

The corresponding command is ``git pull``
(see `documentation <https://help.github.com/articles/fetching-a-remote/#pull>`_).
 ... Error, please inform the author of the task Well done! Correct answer Uploaded content is not utf-8 E Intern error Git: Add files to the staging area Git: Add files to the history Git: Choosing files to synchronize Git: Browse the history Git: Push the local modifications to the remote repository Git: Synchronize the local copy with the distant one Git: Using several branches I Ignored {0!r} There are errors in your answers Impossible to find the folder '%s' or '%s' Impossible to find the expected modification done to the file '%s' in the commit '%s' of the branch '%s' The submitted archive is empty The submitted archive is not a zip file The active branch should be '%s' The branch '%s' should exist The branch '%s' should not exist The modification made to the folder '%s' should not be part of commit '%s' of the branch '%s' The modification made to the file '%s' should not be part of commit '%s' of the branch '%s' The following modification should be in the staging zone The following modification should be in the working directory The following modification should not be in the staging zone The following modification should not be in the working directory The version of file '%s' in the commit '%s' of branch '%s' is not the expected version. Here is a diff between the expected version and yours:

::

%s The git folder you submitted does not contain a git repository The folder containing the answer of this exercise is not a git repository.Please contact the author of this task to inform him about this error. The file '%s' should be part of the list of ignored files The file '%s' should be in the list of the non-tracked files The file '%s' should not be part of the list of ignored files The file '%s' should not be in the list of the non-tracked files The file '%s' should not have been deleted from the working directory, but only ignored The message of commit '%s' does not match the expected one:

Expected:

::

%s

Actual:

::

%s The repository you uploaded needs to be a clone and not the remote repository The repository you uploaded needs to be the remote repository and not a clone The commits already present in the branch '%s' are valid but there are more commits present in the solution than in your submission Mathieu Jadin Bad answer Local repo

-----------------

 Git Disaster Scenario 2 - Cancel a pushed commit Git Disaster Scenario 3 - Back up some code after erasing the local and remote histories Find the author of a commit Find a commit by its message Find the identifier of a commit with message "Even I can change the readme file" in the `repository <https://inginious.org/course/git/git-log/git-find-log.zip>`_ ? Download the `archive <https://inginious.org/course/git/git-add/git-add.zip>`_ which contains a cloned repository in the subfolder `clone`. Add the files `to_stag.txt` et `to_stag_2.txt` to the ``staging area``. Afterwards, zip the whole folder and upload it.

Your submission needs to respect the following hierarchy:

::

    git-add/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Download the `archive <https://inginious.org/course/git/git-commit/git-commit.zip>`_ which already contains a cloned repository in the subfolder `clone`. Commit the file `to_commit.txt` with as message "Commit message". Afterwards, zip the whole folder and upload it.

Your submission needs to respect the following hierarchy:

::

    git-commit/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Download the `archive <https://inginious.org/course/git/git-gitignore/git-gitignore.zip>`_ which already contains a cloned repository in the subfolder `clone`.
Add the file ``.gitignore`` to prevent the synchronization of binary files
(i.e. files with extensions .o, .javac), the configuration files of the IDE Jetbrains
(in the folder ./idea).
For this exercise, this file must belong to the ``working directory``, therefore do not move it to the ``staging zone`` or the history.

Afterwards, zip the whole folder and upload it.
"
Your submission needs to respect the following hierarchy:

::

    git-gitignore/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]

 Download the `archive <https://inginious.org/course/git/git-pull/git-pull.zip>`_ which already contains a cloned repository in the subfolder `clone`. Synchronize it with its distant repository. Afterwards, zip the whole folder and upload it.

The message of the merge commit has to be "MERGE".

Note that the remote repository in this exercise is not on GitHub or Bitbucket but inside the folder `bare.git` of the archive.

Your submission needs to respect the following hierarchy:

::

    git-pull/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Download the `archive <https://inginious.org/course/git/git-push/git-push.zip>`_ which already contains a cloned repository in the subfolder `clone`. Push the local changes onto the remote copy. Afterwards, zip the whole folder and upload it.

Note that the remote repository in this exercise is not on GitHub or Bitbucket but inside the folder `bare.git` of the archive.

Your submission needs to respect the following hierarchy:

::

    git-push/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Download the `archive <https://inginious.org/course/git/git_branches/git-branch.zip>`_ which already contains a cloned repository in the subfolder `clone`.
You need to modify the local and remote histories such as they match theimage of this exercise. You need to consider that *Starting profile* and *Starting menu* require each
an empty files, respectively called profile.txt et menu.txt.

Afterwards, zip the whole folder and upload it.

Note that the remote repository in this exercise is not on GitHub or Bitbucket but inside the folder `bare.git` of the archive.

Your submission needs to respect the following hierarchy:

::

    git-branch/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...] Download the `archive <https://inginious.org/course/git/git_catastrophy_scenario_2/git-revert-remote.zip>`_ which already contains a cloned repository in the subfolder `clone`. Use ``revert`` to cancel the last commit and push the history onto the remote repository. Afterwards, zip the whole folder and upload it.

The commit message has to be "REVERT".

Your submission needs to respect the following hierarchy:

::

    git-revert-remote/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Download the `archive <https://inginious.org/course/git/git_catastrophy_scenario_3/git-reflog.zip>`_ which already contains a cloned repository in the subfolder `clone`. Your repository have local and remote histories one commit apart due to a wrong manipulation.
Use ``reflog`` to find all deleted commits
and push them again on the remote repository.

Afterwards, zip the whole folder and upload it.

Note that the remote repository in this exercise is not on GitHub or Bitbucket but inside the folder `bare.git` of the archive.

::

    git-reflog/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...] Your archive must contain a single folder at the root which contains your submission Your archive does not contain the folder '%s' You spotted that one of your colleagues made a mistake in his work,
and you want to share him your dissatisfaction.
This is really easy with ``git blame``.

Use it to identify the email address of the person who wrote the line 3 of file ``runme.sh`` in the `repository <https://inginious.org/course/git/git-log/git-find-log.zip>`_. You have more commits in the log than expected [LELEC2103] Project in electricity 3 : Electronic systems test ✔ ✔ The test failed as expected ✘ ✘ The test succeeded although it should have failed 