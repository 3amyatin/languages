# git stash
https://git-scm.com/docs/git-stash
```
git stash  # add workdir (and index) to stash, clear index and workdir to HEAD
git stash push  # the same

git stash list  # list available stashes
git stash drop  # delete one particular stash
git stash clear  # delete all stashes

git stash apply  # copy stash to index and workdir
git stash pull  # apply + drop

git stash -p  # Interactive stash patch by patch
```
