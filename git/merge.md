# reset a merge commit

# analyse
```
git log
git reflog # nicer output
```


# if remote
git branch _localbranch_ _origin_ _remotebranch_

# roll back to the specific commit (a set of commits)
`git reset --merge a9fdeb5`
* --merge keeps non-commit files in workdir untouched
* --hard discards all local changes

# roll back the last merge commit
`git reset --merge HEAD~1`

# rollback discarding all local changes
git reset --hard HEAD~1

# the safest option: creating a reverting commit
* good if changes were already pushed to a remote repo

git revert -m 1 <merge-commit-hash>

# if remote 
git push -f _origin_ _remotebranch_
