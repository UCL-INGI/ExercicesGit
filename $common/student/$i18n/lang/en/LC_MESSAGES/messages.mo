��    h      \              �  6   �     �     �  %        4     L     U  �  ]  �  �  �  �  �  �  o  p  �  �$  �  �*  p  Y1  �  �6    �>  �  �A  C   �H     �H     �H  �   �H     �I     �I     �I  .    J  )   /J  .   YJ     �J     �J     �J  E   �J     "K  4   ?K  '   tK  5   �K     �K     �K  %   �K  -   L  c   6L     �L  "   �L  #   �L     �L  &   M  f   CM  f   �M  ;   N  @   MN  B   �N  G   �N  �   O  A   �O  �   P  A   �P  E   �P  H   Q  L   dQ  V   �Q  T   R  G   ]R  G   �R  �   �R     tS     �S     �S     �S     �S  :   �S  6   T  �   GT     �T     �T     �T     U  +   ,U  F   XU     �U     �U     �U  �   �U  �  �V  �  {X  �  G[  �   ]  �  `  w  �b  E  fe  �  �g  &  �j  /  �l  C  �n  �  (q  �   �s  V   vt  -   �t  r  �t  P   nv     �v  $   �v     �v  5   �v  �  "w  ;   �x     �x     y  "   y     @y     Sy     [y  {  dy  �  �~  �  ��  Z  D�    ��  c  ��  g  �    x�  r  ��    ��  _  �  /   f�  
   ��     ��  �   ��     ��     ��     ��  "   θ     �  "   �     2�     Q�     i�  :   }�     ��  3   Ϲ     �  .   �     N�     P�      ^�  *   �  h   ��     �  '   2�      Z�     {�      ��  ]   ��  [   �  8   s�  =   ��  <   �  A   '�  �   i�  >    �  �   ?�  9   о  <   
�  =   G�  @   ��  W   ƿ  _   �  M   ~�  M   ��  �   �     ��  
   ��  %   ��     ��     ��  3   ��  0   0�  X   a�     ��     ��     ��     ��      �  B   )�     l�     ��     ��  �   ��  �  b�  �  �  �  ��  �  p�  �  5�  Q  ��    D�  �  d�    J�  �  R�    5�  �  M�  s   ��  T   F�  -   ��  K  ��  .   �     D�     H�     h�  5   l�   

-----------------

Repo distant

-----------------

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

Dans l'`exercice précédent <https://inginious.org/course/git/git_branches>`_,
vous avez vu comment créer et travailler sur des branches différentes.

Bien sûr, l'intérêt est de fusionner les modifications faites sur une branche dans la branche principale
une fois que vous avez testé.

.. image:: https://inginious.org/course/git/git-branch-merge/git-before-merge.svg

La branche de ``profile`` est prête pour être fusionnée à la branche ``master``.
Pour ce faire, il faut se placer sur la branche master (avec ``checkout``) et utiliser la commande ``git merge``.
La fusion de deux branches fonctionne de manière identique à un ``pull`` de l'historique distant.
S'il n'y a pas de modifs sur master (comme ici), le pointeur de la branche ne fait que se déplacer.
S'il y a des modifs compatibles sur master, un commit de fusion est créé automatiquement.
Si les modifs ne sont pas compatibles, il faudra résoudre le conflit exactement comme dans l'`exercice sur la résolution de conflits <https://inginious.org/course/git/git-merge-conflict>`_.

.. image:: https://inginious.org/course/git/git-branch-merge/git-after-merge.svg

Puis comme d'habitude, il faut push l'historique local de la branche ``master`` sur l'historique distant.

.. image:: https://inginious.org/course/git/git-branch-merge/git-after-push.svg

Il faut utiliser ``git merge <src-branch-name>`` sur la branche de destination. .. raw:: html

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

Dans la `tâche précédente <https://inginious.org/course/git/git-pull>`_,
vous avez fusionné votre historique local avec celui distant
sans modifications en conflit.

En effet, si vous avez deux commits sur deux copies différentes qui modifient la même ligne d'un fichier,
git n'a aucun moyen de savoir quelle version est correcte.

.. image:: https://inginious.org/course/git/git-merge-conflict/git-before-pull-2.svg

Donc il va préparer la ``staging zone`` avec les modifications sans conflit
et vous demande de résoudre manuellement les conflits pour les autres.

Pour vous aider, git a écrit dans chaque fichier en conflit les deux versions des modifications
marquées par les lignes ``<<<<<<<``, ``=======`` et ``>>>>>>>``.
D'abord, il met la version que vous avez dans votre copie locale et puis celle de la copie distante.
Par exemple:

.. code-block:: bash

    <<<<<<< HEAD
    Votre modification locale
    =======
    Le modification incompatible de la copie distante
    >>>>>>>

Une fois les conflits résolus, il faut ajouter les modifications à la ``staging zone``
et créer le commit de fusion dans l'historique local:

.. image:: https://inginious.org/course/git/git-merge-conflict/git-after-pull-2.svg

Et enfin le pousser sur le repository distant.

.. image:: https://inginious.org/course/git/git-merge-conflict/git-after-push-2.svg
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

L'intérêt de conserver un historique est de pouvoir revenir en arrière
si on se trompe. Par exemple:

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_1/git-error.svg

Dans le cas où le commit n'est pas encore poussé sur le repository distant,
c'est facile. Vous pouvez ``reset`` ou ``revert`` les modifications.

La première méthode va supprimer le(s) commit(s) de l'historique.
Elle n'est valide que si vous voulez effacer les derniers commits mais elle est plus propre.
Notez que cette commande **peut modifier** le code si vous utiliser l'option ``--hard``
(donc faites attention quand vous l'utiliser).

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_1/git-reset.svg

Maintenant imaginons que votre modification foireuse se trouve au milieu de commits valides.

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_1/git-error-middle.svg

Dans ce cas, la meilleure option est d'utiliser ``revert`` pour annuler le commit foireux.
En effet, ça va créer un commit supplémentaire qui va annuler les modifications du commit foireux.
Notez que vous ne devez avoir aucune modification qui n'est pas dans l'historique local
pour que ça marche.

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_1/git-revert.svg

Les commandes bash correspondantes sont ``git reset`` (`documentation <https://git-scm.com/docs/git-reset.html>`__) et ``git revert`` (`documentation <https://git-scm.com/docs/git-revert.html>`__). .. raw:: html

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

Lorsque vous commencer à contribuer à un repository git,
il faut créer un clone de l'historique distant.

Pour cela, vous pouvez utiliser ``git clone url-to-repo folder`` (voir `documentation <https://help.github.com/articles/cloning-a-repository/>`_).
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
 ... Erreur imprévue, merci de la signaler à l'auteur de la tâche Bien joué ! Bonne réponse Clonez le `repository distant <https://github.com/githubtraining/hellogitworld>`_ et uploadez l'archive zip du dossier créé.

Votre soumission devra avoir l'architecture suivante:

::

    git-clone/
    └── [...]
 Contenu non décodable en utf-8 E Erreur interne Git: Ajouter des fichiers dans la staging area Git: Ajouter des fichiers à l'historique Git: Choisir les fichiers que l'on synchronise Git: Cloner un repo distant  Git: Explorer l'historique Git: Fusionner des branches Git: Push les modifications de l'historique sur le repository distant Git: Résolution de conflits Git: Syncroniser la copie locale avec celle distante Git: Utiliser plusieurs branches en git HEAD est détachée et ne pointe pas vers une branche I Ignoré {0!r} Il y a des erreurs dans vos réponses Impossible de trouver le dossier '%s' ou '%s' Impossible de trouver une modification faite au fichier '%s' dans le commit '%s' de la branche '%s' L'archive soumise est vide L'archive soumise n'est pas un zip La branch active devrait être '%s' La branche '%s' devrait exister La branche '%s' ne devrait pas exister La modification faite au dossier '%s' ne devrait pas se trouver dans le commit '%s' de la branche '%s' La modification faite au fichier '%s' ne devrait pas se trouver dans le commit '%s' de la branche '%s' La modification suivante devrait être dans la staging zone La modification suivante devrait être dans le working directory La modification suivante ne devrait pas être dans la staging zone La modification suivante ne devrait pas être dans le working directory La version du fichier '%s' dans le commit '%s' de la branche '%s' n'est pas celui attendu. Voici un diff entre la bonne version et celle que vous avez soumise:

::

%s Le dossier que vous avez soumis ne contient pas de repository git Le dossier qui est censé contenir la solution de l'exercice n'est pas un repository git. Contactez l'auteur de la tâche pour le lui signaler. Le fichier '%s' devrait être dans la liste des fichiers ignorés Le fichier '%s' devrait être dans la liste des fichiers non traqués Le fichier '%s' ne devrait pas être dans la liste des fichiers ignorés Le fichier '%s' ne devrait pas être dans la liste des fichiers non traqués Le fichier '%s' ne devrait pas être supprimé du working directory, seulement ignoré Le message du commit '%s' n'est pas celui attendu:

Attendu:

::

%s

Reçu:

::

%s Le repo que vous avez soumis doit être le clone et non le repo distant Le repo que vous avez soumis doit être le repo distant et non le clone Les commits déjà présents dans la branche '%s' sont corrects mais il y a plus de commits dans la solution que dans votre soumission Mathieu Jadin Mauvaise réponse Repo local

-----------------

 Reset un commit Revert un commit Scénario Catastrophe Git 1 - Annuler un commit non pushé Scénario Catastrophe Git 2 - Annuler un commit pushé Scénario Catastrophe Git 3 - Récupérer le code après avoir supprimé les modifs de votre code, de l'historique local et distant Test de l'historique Test des branches Test des fichiers ignorés Test des fichiers non traqués Test des modifications dans la staging zone Test des modifications du working directory pour les fichiers traqués Test du type de repo Trouver l'auteur d'une ligne Trouver un commit par message Trouvez l'identifiant du commit avec pour message "Even I can change the readme file" dans le `repository <https://inginious.org/course/git/git-log/git-find-log.zip>`_ ? Téléchargez l'`archive <https://inginious.org/course/git/git-add/git-add.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Ajouter uniquement les fichiers `to_stag.txt` et `to_stag_2.txt` à la ``staging area``. Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Votre soumission devra avoir l'architecture suivante:

::

    git-add/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Téléchargez l'`archive <https://inginious.org/course/git/git-branch-merge/git-branch-merge.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Votre repository est dans l'état décrit par la première image de l'énoncé. Arrangez-vous pour le faire passer dans l'état décrit par la dernière image.

Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Le message du commit de fusion devra être "MERGE".

Notez que le repository "distant" dans cet exercice n'est pas sur github ou dans bitbucket mais dans le dossier `bare.git` de l'archive.

::

    git-branch-merge/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...] Téléchargez l'`archive <https://inginious.org/course/git/git-commit/git-commit.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Committez le fichier `to_commit.txt` avec le message "Commit message". Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

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

 Téléchargez l'`archive <https://inginious.org/course/git/git-merge-conflict/git-merge-conflict.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Synchroniser-le avec son repository distant, résolver le conflit. Le contenu des deux commits doit être concaténé.

Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Le message du commit de fusion devra être "MERGE".

Notez que le repository "distant" dans cet exercice n'est pas sur github ou dans bitbucket mais dans le dossier `bare.git` de l'archive.

Votre soumission devra avoir l'architecture suivante:

::

    git-merge-conflict/
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
        └── [...] Téléchargez l'`archive <https://inginious.org/course/git/git_catastrophy_scenario_1/git-reset-local.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Utilisez un ``reset`` pour retirer le dernier commit sans supprimer les modifications dans le code ou la ``staging zone``. Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Votre soumission devra avoir l'architecture suivante:

::

    git-reset-local/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Téléchargez l'`archive <https://inginious.org/course/git/git_catastrophy_scenario_1/git-revert-local.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Utilisez un ``revert`` pour annuler l'avant-dernier commit sans supprimer le dernier. Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

Le message de commit devra être "REVERT".

Votre soumission devra avoir l'architecture suivante:

::

    git-revert-local/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Téléchargez l'`archive <https://inginious.org/course/git/git_catastrophy_scenario_2/git-revert-remote.zip>`_ qui contient déjà un repository cloné dans le sous-dossier `clone`. Utilisez un ``revert`` pour annuler le dernier commit et pushez l'historique sur le repository distant. Une fois que c'est fait, ré-archivez le dossier complet et uploadez-le.

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
        └── [...] Une erreur intattendue s'est produite lors de la génération de la solution. Veuillez la reportez à l'auteur de la tâche:[out] %s [err] %s Votre archive doit contenir un seul dossier à la racine qui contient votre soumission Votre archive ne contient pas le dossier '%s' Vous avez repéré qu'un de vos collègues fait une erreur dans son travail
et vous souhaitez lui faire part de votre mécontentement ?
Rien de plus facile avec ``git blame``.

Pouvez-vous l'utiliser pour identifier l'email de la personne qui a écrit la ligne 3 du fichier ``runme.sh`` dans le `repository <https://inginious.org/course/git/git-log/git-find-log.zip>`_ ? Vous avez trop des commits dans l'historique par rapport à la solution attendue ✔ ✔ Le test a échoué comme attendu ✘ ✘ Le test a réussi alors qu'il aurait dû échouer Project-Id-Version: PROJECT VERSION
Report-Msgid-Bugs-To: EMAIL@ADDRESS
POT-Creation-Date: 2020-02-10 22:42+0100
PO-Revision-Date: 2020-02-04 09:41+0100
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en
Language-Team: en <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.7.0
 

-----------------

Remote repository

-----------------

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

In this exercise, you will  need to select changes to add to the ``staging area``.

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

In the previous `exercise <https://inginious.org/course/git/git_branches>`_,
you learned how to create and work with different branches.

The main concept behind branches is to merge the modifications made in one branch into the main branches
once you tested your changes.

.. image:: https://inginious.org/course/git/git-branch-merge/git-before-merge.svg

The ``profile`` branch is ready to be merged with the ``master`` branch.
To do so, you need to set yourself on the branch master (with ``checkout``) and use the command ``git merge``.
The merging of two branches works similarly to a ``pull`` from the remote history.
If there are no modifications on the master branch (as here), the pointer of the branch is just moved.
If there are compatible modifications on the master branch, a merge commit is automatically created.
If there are incompatible changes, the conflicts will have to be solved just as in the exercise on `conflicts solving <https://inginious.org/course/git/git-merge-conflict>`_.

.. image:: https://inginious.org/course/git/git-branch-merge/git-after-merge.svg

Then, as usual, you need to push the local history of the branch ``master`` to the remote history.

.. image:: https://inginious.org/course/git/git-branch-merge/git-after-push.svg

You have to use ``git merge <src-branch-name>`` on the destination branch. .. raw:: html

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

In the `previous task <https://inginious.org/course/git/git-pull>`_,
you merged your local history with the remote one
with no conflicting changes.

Indeed, if you have two commits in different histories that modify the same line of a file,
git is unable to figure out which version is the right one.

.. image:: https://inginious.org/course/git/git-merge-conflict/git-before-pull-2.svg

Therefore, it will prepare a ``staging zone`` with the modifications without any conflict and
and it will ask you to manually solve the remaining conflicts.

To help you, git writes in each conflicting file the conflicted lines, 
highlighted with ``<<<<<<<``, ``=======`` et ``>>>>>>>``.
First, it inserts the local version and then inserts the remote version.
For instance:

.. code-block:: bash

    <<<<<<< HEAD
    Your local change
    =======
    The incompatible change on the remote copy
    >>>>>>>

Once the conflicts are solved, you need to add the changes to the ``staging zone``
and the create the merge commit in the local copy:

.. image:: https://inginious.org/course/git/git-merge-conflict/git-after-pull-2.svg

Finally, you may push your local history to the remote copy.

.. image:: https://inginious.org/course/git/git-merge-conflict/git-after-push-2.svg
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

In a `previous exercise <https://inginious.org/course/git/git_catastrophy_scenario_1>`_,
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

The main interest of keeping a modification history is to be able to roll back mistakes.
For instance:

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_1/git-error.svg

If the commit is not yet pushed in the remote repository,
that's easy. You can ``reset`` or ``revert`` the modifications.

The first method will delete the commit(s) of the history.
It is only valid if you want to remove the last commit(s) but it is the cleanest one.
Note that this command **can modify** the code if you use the option ``--hard``
(so be careful when you use it).

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_1/git-reset.svg

Let's image that your mistake is in the middle of valid commits.

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_1/git-error-middle.svg

In this case, the best option is to use ``revert`` to cancel the bad commit.
Indeed, this will create an additional commit which will cancel the modifications of the bad commit.
Note that you cannot have pending modifications while using this method to make it work.

.. image:: https://inginious.org/course/git/git_catastrophy_scenario_1/git-revert.svg

The corresponding bash command are ``git reset`` (`documentation <https://git-scm.com/docs/git-reset.html>`__) and ``git revert`` (`documentation <https://git-scm.com/docs/git-revert.html>`__). .. raw:: html

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

When you start to work on a git repository,
you need to clone the remote history.

To do so, you need to use the command ``git clone url-to-repo folder`` (see `the documentation <https://help.github.com/articles/cloning-a-repository/>`_).
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

When you work in a team, it might happen that new commits are present in the repository
but not in your local history, such as:

.. image:: https://inginious.org/course/git/git-pull/git-before-pull.svg

You need to ``pull`` the remote modifications to your main branch
.As you have no local commit that is not present in the remote branch
``pull`` only updates the local branch.

.. image:: https://inginious.org/course/git/git-pull/git-after-pull.svg

Now, let's imagine that you have a local commit unpushed to the remote copy:

.. image:: https://inginious.org/course/git/git-pull/git-before-pull-2.svg

If you use ``pull``, git will automatically create an additional commit
that will merge both branchs together.

.. image:: https://inginious.org/course/git/git-pull/git-after-pull-2.svg

You then need to ``push`` the new commit onto the remote branch to finish the synchronization.

.. image:: https://inginious.org/course/git/git-pull/git-after-push-2.svg

The corresponding command is ``git pull``
(see `documentation <https://help.github.com/articles/fetching-a-remote/#pull>`_).
 ... Error, please inform the author of the task Well done! Correct answer Clone the following `remote repository <https://github.com/githubtraining/hellogitworld>`_ and upload the zip archive of the created folder.

Your submission needs to respect the following hierarchy:

::

    git-clone/
    └── [...]
 Uploaded content is not utf-8 E Intern error Git: Add files to the staging area Git: Add files to the history Git: Choosing files to synchronize Git: Clone a remote repository Git: Browse the history Git: Merge branches Git: Push the local modifications to the remote repository Git: Resolve conflicts Git: Synchronize the local copy with the remote one Git: Using several branches HEAD is detached and do not reference a branch I Ignored {0!r} There are errors in your answers Impossible to find the folder '%s' or '%s' Impossible to find the expected modification done to the file '%s' in the commit '%s' of the branch '%s' The submitted archive is empty The submitted archive is not a zip file The active branch should be '%s' The branch '%s' should exist The branch '%s' should not exist The modification made to the folder '%s' should not be part of commit '%s' of the branch '%s' The modification made to the file '%s' should not be part of commit '%s' of the branch '%s' The following modification should be in the staging zone The following modification should be in the working directory The following modification should not be in the staging zone The following modification should not be in the working directory The version of file '%s' in the commit '%s' of branch '%s' is not the expected version. Here is a diff between the expected version and yours:

::

%s The git folder you submitted does not contain a git repository The folder containing the answer of this exercise is not a git repository.Please contact the author of this task to inform him about this error. The file '%s' should be part of the list of ignored files The file '%s' should be in the list of the non-tracked files The file '%s' should not be part of the list of ignored files The file '%s' should not be in the list of the non-tracked files The file '%s' should not have been deleted from the working directory, but only ignored The message of commit '%s' does not match the expected one:

Expected:

::

%s

Actual:

::

%s The repository you uploaded needs to be a clone and not the remote repository The repository you uploaded needs to be the remote repository and not a clone The commits already present in the branch '%s' are valid but there are more commits present in the solution than in your submission Mathieu Jadin Bad answer Local repository

-----------------

 Reset a commit Revert a commit Git Disaster Scenario 1 - Cancel an unpushed commit Git Disaster Scenario 2 - Cancel a pushed commit Git Disaster Scenario 3 - Back up some code after erasing the local and remote histories Test: Commit history Test: Branches Test: Ignored files Test: Untracked files Test: Staging area modifications Test: Modifications in the working directory for the tracked files Test: Type of repository Find the author of a commit Find a commit by its message Find the identifier of a commit with message "Even I can change the readme file" in the `repository <https://inginious.org/course/git/git-log/git-find-log.zip>`_ ? Download the `archive <https://inginious.org/course/git/git-add/git-add.zip>`_ which contains a cloned repository in the subfolder `clone`. Add the files `to_stag.txt` et `to_stag_2.txt` to the ``staging area``. Afterwards, zip the whole folder and upload it.

Your submission needs to respect the following hierarchy:

::

    git-add/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Download the `archive <https://inginious.org/course/git/git-branch-merge/git-branch-merge.zip>`_ which already contains a cloned repository in the subfolder `clone`. The repository is already in the state described by the first image of this exercise. You need to modify the repository such as it matches the last image.

Afterwards, zip the whole folder and upload it.

Note that the remote repository in this exercise is not on GitHub or Bitbucket but inside the folder `bare.git` of the archive.
Your submission needs to respect the following hierarchy:

::

    git-branch-merge/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...] Download the `archive <https://inginious.org/course/git/git-commit/git-commit.zip>`_ which already contains a cloned repository in the subfolder `clone`. Commit the file `to_commit.txt` with as message "Commit message". Afterwards, zip the whole folder and upload it.

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

 Download the `archive <https://inginious.org/course/git/git-merge-conflict/git-merge-conflict.zip>`_ which already contains a cloned repository in the subfolder `clone`. Synchronize it with its remote repository, and solve the conflict. The content of both commits must be merged together.
Afterwards, zip the whole folder and upload it.

The message of the merge commit has to be "MERGE".

Note that the remote repository in this exercise is not on GitHub or Bitbucket but inside the folder `bare.git` of the archive.

Your submission needs to respect the following hierarchy:

::

    git-merge-conflict/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Download the `archive <https://inginious.org/course/git/git-pull/git-pull.zip>`_ which already contains a cloned repository in the subfolder `clone`. Synchronize it with its remote repository. Afterwards, zip the whole folder and upload it.

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
        └── [...] Download the `archive <https://inginious.org/course/git/git_catastrophy_scenario_1/git-reset-local.zip>`_ which already contains a cloned repository in the subfolder `clone`. Use a ``reset`` to remove the last commit without deleting the modification in the code or in the ``staging zone``.

After that, re-archive the complete folder and upload it.

Your submission have to have the following hierarchy:

::

    git-commit/
    ├── bare.git/
    |   └── [...]
    └── clone/
        └── [...]
 Download the `archive <https://inginious.org/course/git/git_catastrophy_scenario_1/git-revert-local.zip>`_ which already contains a cloned repository in the subfolder `clone`.
Use a ``revert`` to cancel the before last commit modifications without deleting the commit.

The commit message have to be "REVERT".

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
        └── [...] An unexpected error happened during the generation of the solution.Please contact the task author:[out] %s [err] %s Your archive must contain a single folder at the root which contains your submission Your archive does not contain the folder '%s' You spotted that one of your colleagues made a mistake in his work,
and you want to share him your dissatisfaction.
This is really easy with ``git blame``.

Use it to identify the email address of the person who wrote the line 3 of file ``runme.sh`` in the `repository <https://inginious.org/course/git/git-log/git-find-log.zip>`_. You have more commits in the log than expected ✔ ✔ The test failed as expected ✘ ✘ The test succeeded although it should have failed 