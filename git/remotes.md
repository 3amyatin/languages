# change default branch
execute locally to update:\
```git remote set-head origin -a```\
via https://stackoverflow.com/questions/21566186/origin-head-points-to-wrong-branch

# Clear old remote branches
`git fetch` does not remove remotely removed branches\
`git fetch --prune` removes them\
via https://stackoverflow.com/questions/35941566/git-says-remote-ref-does-not-exist-when-i-delete-remote-branch
