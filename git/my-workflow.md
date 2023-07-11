# My git workflow

## principles


## Setup
    cd WORKDIR_PARENT
    # existing remote repo
    git clone URL
    # new remote repo
    git remote add origin URL

    MASTERBRANCH=Development
    # master | main | ...

    FEATUREBRANCH=POCMA-1234_FeatureBug_GRUNDDATEN_Pakete
    # POCMA = Jira ticket abbreviation
    # 1234 = Jira ticket number
    # FeatureBug = change type (Feature | Bug)
    # GRUNDDATEN = Product
    # Pakete = short change description

### create a local copy of upstream master branch
    git switch -c $MASTERBRANCH origin/$MASTERBRANCH

## Create a feature branch
    git fetch
    git switch --no-track -c $FEATUREBRANCH origin/$MASTERBRANCH
    # git switch -c $FEATUREBRANCH origin/$MASTERBRANCH
    git push --set-upstream origin $FEATUREBRANCH
    # git push

## Daily

    git status
    git branch --list

    # get recent changes in MASTERBRANCH
    #git switch dmitry
    git pull --rebase origin $MASTER
    #or git pull && git rebase -i origin/Development
    git push

    git commit -m "POCMA-1234 WIP daily"
    git push

## Weekly
    git commit -m "POCMA-1234 WIP weekly"
    git push

## Sprint end
    # test
    # interactive rebase to clean the commits up:
    git rebase -i
    git merge --no-ff # into master, not rebase
    # merge commit message explains what was changed
    # commits' messages explains how it was changed

## inspirational sources
* OneFlow [endoflineblog.com/__gitflow-considered-harmful__](https://www.endoflineblog.com/gitflow-considered-harmful)
* ThreeFlow [Title](https://laptrinhx.com/a-branching-strategy-simpler-than-gitflow-three-flow-145270038/)
* GitFlow -- the classics
    * [atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
