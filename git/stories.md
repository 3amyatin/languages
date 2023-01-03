# Real life stories with `git`

find commit by message

    git log --grep MESSAGE

see changed files
     
    git show --name-only COMMIT_HASH

see commit-diff of a specific file in full context (1000 lines between changes)

    git show -U1000 COMMIT_HASH -- FILENAME

see HEAD-diff of a specific file in full context (1000 lines between changes)

    git diff -U1000 COMMIT_HASH -- FILENAME

see later changes of the same file

     git log COMMIT_HASH~.. -- FILENAME

see diff of later change

    git show -U1000 COMMIT2_HASH -- FILENAME

final decision: **take changes manually into the new commit**

show commit-diff without +/- neat for copy-paste

    git show --color-only -U1000 COMMIT_HASH -- FILENAME