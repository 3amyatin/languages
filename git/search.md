# Search in git
https://git-scm.com/book/en/v2/Git-Tools-Searching

## search commit messages


## find files by content

## search in working dir    
    git grep --name-only -i TEXT
    git grep --count -i TEXT


## search in history by commit message
    git log -i --grep="facebook"


## search in history by diff
    git log --oneline -S TEXT

    git log -S TEXT --oneline
    git log -L :TEXT:FILENAME

    # in full history
    git grep --name-only TEXT $(git rev-list --all)

## using regexp

    git log -L /REGEXP/:FILENAME