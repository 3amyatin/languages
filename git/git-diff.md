# git diff

    git diff            # workdir .. index = uncommitted changes
    git diff --cached   # index .. HEAD
    git diff --staged   # index .. HEAD
    git diff HEAD       # workdir .. HEAD

![image](https://github.com/zzzamyatin/languages/assets/10171333/d5dd15ec-6ba9-453d-837f-b4f6e14d3375)


## format
    git diff                  # line level by default
    git diff --color-words    # word level
    git diff --color-words=.  # letter level

## see changes in one commit
    git diff COMMIT~ COMMIT  
    git diff COMMIT^!
    git show COMMIT     # not for merges

    git diff A B            # seldom
    git diff A..B           # same as above
    git diff A...B          # often
    git diff origin/main... # since fork

![image](https://github.com/zzzamyatin/languages/assets/10171333/379bb119-125b-4665-9ac0-e819babe2c88)
    

