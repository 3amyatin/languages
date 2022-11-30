# Change history

# update the last commit with workdir changes
    git commit --amend

# merge two commits
    git rebase -i HEAD~10
    # * reorder commits
    # * put "fixup" for a commit to be merged to the commit above him

## move a file from one commit to another
* https://stackoverflow.com/questions/18569931/move-files-between-commits
* https://www.internalpointers.com/post/split-commit-into-smaller-ones-git

~~~
git rebase -i HEAD~5  # well 1-2 commits before
# put "edit" for a commit to be split, save
git reset HEAD~1  # or HEAD^
git add -- ** '!herofilespec'
git c -m "Old stuff"
git add -- herofilespec
git c -m "My file to move"
git rebase --continue
git rebase -i HEAD~3
# put "squash" or "fix" to latest commit of two, save
git log --oneline --name-only HEAD~2..  # enjoy
~~~

