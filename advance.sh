# Git rebase interactive.
git rebase -i HEAD~X
Faire un test avec reword, edit, squash, fixup, drop

Rebase interactive -> Réecrire son historique

# Git pull -r vs git pull
Quel est la différence ?


# Git Stash
# On stash
git stash

#  Git stash pop
git stash pop


# Git fixup 
git commit --fixup f3d12d3
git rebase  -i f3d12d3~ --autosquash
git push -f

# Danger de push -f
 -> git push --force-with-lease

# Reflog
# L'outil de dernier recours
# Le premier commit
# Le second écrase 
# Le deuxième pull la version écrasée
# git reset --hard origin/master
# Comment retrouver le commit perdu ?
