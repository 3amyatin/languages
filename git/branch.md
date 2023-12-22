# Git branch
https://git-scm.com/docs/git-branch

## Analysis
    git branch --all
    
### Get remote branches for `git merge` und `git push`
    git rev-parse --symbolic-full-name @{upstream}
    git rev-parse --symbolic-full-name @{push}

## Fix

### rename branch

    git switch $OLD
    git branch -m $NEW
    git push origin --delete $OLD
    git push origin -u $BRANCH

    # v2
    git switch $OLD
    git push origin :$OLD $NEW
    git push origin -u $BRANCH

### delete remote branch
    git push origin :REMOTEBRANCHNAME
