# Git branch
https://git-scm.com/docs/git-branch

## Analysis
    git branch --all
    
### Get remote branches for `git merge` und `git push`
    git rev-parse --symbolic-full-name @{upstream}
    git rev-parse --symbolic-full-name @{push}

## Fix
### delete remote branch
    git push origin :REMOTEBRANCHNAME
