# Search in git
https://git-scm.com/book/en/v2/Git-Tools-Searching

## search commit messages
    git log -i --grep="facebook"

## search files in working dir    
    git grep --name-only -i TEXT
    git grep --count -i TEXT

## search in history by diff
    git log -S TEXT --oneline
    git log -L :TEXT:FILENAME
    git log -L /REGEXP/:FILENAME
    
    # in full history
    git grep --name-only TEXT $(git rev-list --all)

