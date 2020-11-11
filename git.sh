# $ git config --global user.name "John Doe"
# $ git config --global user.email johndoe@example.com
# On paramètre notre identity 
# $ git config --global core.editor emacs (set an editor, default is vim
# $ git config --global init.defaultBranch main (default is now main instead of master
# $ git config --list (check your config)
# Votre config git global est persisté dans le fichier ~/.gitconfig

# Help! git help <verb>
# git help config 

# Sauvegarder les credentials git: 
# $ git config credential.helper store

# Initialiser un repository local
# git init
# Création d'un dossier .git contenant les index git notamment.

# git status : vérifie l'état actuel de votre index (https://mghignet.github.io/git-dammit-talk/#44)

# git add <file> ou . si on souhaite ajouter tous les fichiers possibles
# git commit -m "<message de votre commit>"
# git log --oneline

# A ce moment là, les modifications sont uniquement sur votre répertoire git en local et ne sont pas partagés.
# Créé un répertoire sur GitHub par groupe de 2/3
# git remote add origin <URL_DE_VOTRE_REPOSITORY>
# git push -u origin main

# On regarde maintenant notre repository

# Le binome/trinome récupère le répertoire git de son voisin
# git clone https://github.com/wadinj/ground.git

# Récupérer les modifications de ces collègues
# Une personne du groupe effectue un commit 
# Pour rappel : 
# $ git add <file>
# $ git commit -m "<message>"
# $ git push

# Pour récupérer la dernière version
# $ git pull 

# Cas du fast-forward
# Au moins deux membres effectue un commit (uniquement en local) [ Sur des fichiers séparés ]
# 1 membre push son changement
# Le deuxième essai de push, que se passe-t-il ? Pourquoi ?

# Cas du conflit
# Au moins deux membres effectue un commit (uniquement en local) [ Sur des fichiers identiques ]
# 1 membre push son changement
# Le deuxième essai de push, que se passe-t-il ? Pourquoi ?

# Résolution du conflit
# Git semble avoir effectuer des changements au sein de nos fichiers, on regarde un peu...
# Customisable avec git config merge.tool "name"
# Merge possible avec votre IDE / Editeur
# git mergetool
# Ou un merge à la main reste possible

# Le système de branche
# git branch
# liste toutes les branches de votre système
# git branch my-branch # Créer une branche

# Se déplacer sur une branche 
# $ git checkout <NOM_DE_LA_BRANCHE>
# Créer + checkout
# $ git checkout -b <NOM_DE_LA_BRANCHE>

# Pousser un changement sur sa branche.
# Ouvrir une pull request sur GitHub vers main !

# On regarde l'historique de notre répertoire git
# $ git log --oneline

# Revert un commit 
# Effectuer un nouveau commit + push
git revert <COMMIT-SHA1> ou bien HEAD (HEAD signifie le dernier commit)


# Modifier son dernier commit
# $ Ajouter des nouvels modifications à l'index: git add ...
git commit --amend
git push

# Que se passe-t-il ?
# L'option -f permet de forcer un push et réécrire l'historique
# Attention, c'est dangereux, vous imposer votre historique


# Effectuer 3 commits sur main

# Merger deux branches.
# Un merge permett de récupérer les changements d'une branche dans une autre
# Se positionner sur la branche que vous avez créé
# Merger master et les trois derniers commits
# $ git merge master
# On vérifie l'historique git: $ git log --oneline
# Que se passe-t-il ?

# Même opération avec rebase
# $ git rebase master

# On vérifie l'historique git: que se passe-t-il ?
# Quelle est la différence entre rebase et merge ?


# Après un rebase, on réécrit l'historique, du coup, on oublie pas: git push -f

# git fetch / git pull (https://mghignet.github.io/git-dammit-talk/#56)
# git pull --rebase = git fetch + git rebase origin/<branch>

# On vérifie:
# Faire un commit sans push, le second fait un commit sans le pousser
# git pull --rebase
# git log --oneline
# Refaire l'opération avec
# git pull
# git log --oneline


# Modifier un commit dans l'historique
# git rebase -i <COMMIT_SHA_A_PARTIR DE CE QU'ON SOUHAITE MODIFIER>
# une fois le rebase fini on "push -f" (réécriture de l'historique)

# Explorer l'ensemble des options de rebase interactive !


# Mettre de côté des changements de notre working directory
# $ git stash
# $ Pour les récupérer : git stash pop

# Quand on a fait n'importe quoi, on souhaite revenir à la version de git : (git reset)

# On garde les modifs, indexées
# git reset HEAD~ --soft
# On garde toujours les modifs mais non indexées
# git reset HEAD~ --mixed
# git reset HEAD~
# On supprime toutes les modifs
# git reset HEAD~ --hard


# Voir les modifications en cours

# Modifications non indexées
git diff
# Modifications indexées
git diff --cached
git diff --staged

# Toutes les modifications
git diff HEAD

# Les modifications entre deux commits / branches
git diff ab0f..89df
git diff ab0f..master
git diff ab0f..HEAD