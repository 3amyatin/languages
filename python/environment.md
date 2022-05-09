# Articles
* https://cjolowicz.github.io/posts/hypermodern-python-01-setup/
* https://venthur.de/2021-06-26-python-packaging.html
* https://testdriven.io/blog/python-environments/


# dependency management
* pipenv  # recommended by PyPA, but suxx
* poetry  # cool, also environment mgmt

# distributions
* PyPI / pip
* Anaconda / conda

# setup
* https://blog.pilosus.org/posts/2019/12/26/python-third-party-tools-configuration/

setup.py + requirements.txt  # currently best, others suxx

* setup.cfg
* pipfile + pipfile.lock
* pyproject.toml


# virtual envs
1. [venv](https://docs.python.org/3/library/venv.html) (virtualenv) python native
  * https://www.andreagrandi.it/2022/01/29/install-python-with-pyenv-and-pyenvvirtualenv-create-virtual-environment-with-specific-python-version-macos/
2. [conda](https://docs.conda.io/en/latest/)
3. [Poetry](https://python-poetry.org/)


# py binaries mgmt
pyenv

# what are we using now?
```
where python # executable location in win
which python # executable location in macos and unix
python --version
python3
py
py3
```

# freeze
conda env export > environment.yml

`conda env export` has problems:
* different on macOS and Win
* channels in random order
* smth else
Script [`conda-lock`](https://github.com/conda-incubator/conda-lock/) solves them.

# create an environment
```
python -m venv <my_env_name>
conda env create -n envname -f environment.yml
```

# activate an environment
```
source <my_env_name>/bin/activate  # venv unix
.\<my_env_name>\Scripts\activate  # venv win
conda activate
```

## check success
```
where python # executable location in win
which python # executable location in macos and unix
python --version
```

# install a package
`pip install`
`conda install`


# package code
* as a zip file https://docs.python.org/3/library/zipapp.html
