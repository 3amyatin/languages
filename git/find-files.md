# Pathspec - how to specify files in Git
* https://git-scm.com/docs/gitglossary#def_pathspec
* https://css-tricks.com/git-pathspecs-and-how-to-use-them

`<pathspec>`
  
    git add -- <pathspec> 
    git ls-files -- <pathspec> # list files in index and in the working dir, NOT in repository https://git-scm.com/docs/git-ls-files
    git grep -- <pathspec>

## exclude
    -- ':(exclude)*.java'
    -- ':!*.java'  # shortcut
    -- `git ls-files | grep -v <exclude-pattern>`


