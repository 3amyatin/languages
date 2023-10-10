# git diff

    git diff            # workdir .. index
    git diff --cached   # index .. HEAD
    git diff --staged   # index .. HEAD
    git diff HEAD       # workdir .. HEAD

## see changes in one commit
    git diff COMMIT~ COMMIT  
    git diff COMMIT^!
    git show COMMIT     # not for merges

    git diff A B            # seldom
    git diff A..B           # same as above
    git diff A...B          # often
    git diff origin/main... # since fork

![image](https://github.com/zzzamyatin/languages/assets/10171333/379bb119-125b-4665-9ac0-e819babe2c88)
    

