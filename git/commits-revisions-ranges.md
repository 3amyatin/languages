# Commits
https://git-scm.com/book/tr/v2/Git-Tools-Revision-Selection


HEAD  tip of current branch
HEAD~1 | wow

# Ranges

git log .. = git diff ...

## Double Dot
Z
* The most common range specification
* reachable from one commit but aren’t reachable from another

      git log master..experiment  # experiment - master (what was done in my branch)
      git log experiment..master  # master - experiment (what was done in the master since my branching/last rebasing)
      git log origin/remotebranch # will be pushed ⭐

      git log experiment..master  # (master-experiment) + (experiment-master)


      git diff A B    # between tips (heads) of branches
      git diff A..B   # same
      git diff A...B  # B-A

## HEAD can be omitted
    git switch experiment
    git log master..HEAD
    git log master..  # same
    git log master    # same, .. can be omitted too ⭐

