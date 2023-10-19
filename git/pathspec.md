# Pathspec - how to specify files in Git
* https://git-scm.com/docs/gitglossary#def_pathspec
* https://css-tricks.com/git-pathspecs-and-how-to-use-them
  
`<pathspec>`  
`*` in pathspec can be executed by shell  
`'*'` or `"*"` in pathspec will not be opened by shell  
      
    git add -- <pathspec> 
    git ls-files -- <pathspec> # list files in index and in the working dir, NOT in repository https://git-scm.com/docs/git-ls-files
    git grep -- <pathspec>

## case insensetive
    git ls-files ':(icase)*.jpg'

## exclude
    git ls-files ':(exclude)*.java'
    git ls-files ':!*.java'  # shortcut
    git ls-files | grep -v <exclude-pattern>


