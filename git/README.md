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

# todo
* https://www.freecodecamp.org/news/git-under-the-hood/
* https://www.freecodecamp.org/news/how-to-write-better-git-commit-messages/
