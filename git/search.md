# Search in git

search in commit messages

    git log --grep="facebook"

find files by content
    
    git log --oneline -S TEXT

    git grep --count TEXT
    git grep --name-only TEXT

    # in full history
    git grep --name-only TEXT $(git rev-list --all)


search in history

    git log -S TEXT --oneline
    git log -L :TEXT:FILENAME

using regexp

    git log -L /REGEXP/:FILENAME