# get help
```
git help  # in general
git help tutorial  # the very basics

# for some specific command
git help blame
man git-blame
```

# Solving problems
https://ohshitgit.com/  
https://docs.gitlab.com/ee/topics/git/numerous_undo_possibilities_in_git/

## clear index, keep workdir (unstage)
```
git restore --staged <specific_file>
git reset # completely
```

## get file state from HEAD = rewrite workdir from repo, clear index
```
git restore <specific_file>
```

## delete all untracked files
```
git clean -n  # check it
git clean -f  # do it
git clean -fd  # dirs only
git clean -fX  # ignored files only
git clean -fx  # ignored and non-ignored files o_O
```

## move a file from one commit to another
* https://stackoverflow.com/questions/18569931/move-files-between-commits
* https://www.internalpointers.com/post/split-commit-into-smaller-ones-git
```
git rebase -i HEAD~5  # well 1-2 commits before
# put "edit" for a commit to be split, save
git reset HEAD~1
git add -- ** '!herofilespec'
git c -m "Old stuff"
git add -- herofilespec
git c -m "My file to move"
git rebase --continue
git rebase -i HEAD~3
# put "squash" or "fix" to latest commit of two, save
git log --oneline --name-only HEAD~2..  # enjoy
```

# todo
* https://www.freecodecamp.org/news/git-under-the-hood/
* https://www.freecodecamp.org/news/how-to-write-better-git-commit-messages/
