# CONDA CHEATSHEET

**Note:** Anaconda Navigator and channels missing

### Conda Management

**Version:** `conda info` `conda search <package> --info`

**Configuration:** `conda config --show` or  `--show-sources`

**Update Conda:** `conda update -n base conda` 

**Upgrade Conda:** `conda update anaconda`



### Package Management

**Install:** `conda install [--yes] [PKG1 "PKG2[version='3.1.2|3.1.4']" "PKG3>2.5,<3.2"...]`

**Upgrade:** `conda update --all --name <env>`

**Clean:** `conda clean --all`

**Uninstall:** `conda uninstall <pkg> --name <env>`



### Environment management

**Create:**

​	**New Environment:** `conda create --name <env> [python=3.6] ["pkg1>7.6" pkg2 pkg3...]`

​	**YML Environment:** `conda env create [--file envname.yml // default = environment.yml]`

​	**TXT Environment:** `conda create --name <env> --file <file.txt>`

**Export:**

​	**YML Environment:** `conda env export --name <env> > <envname.yml>`

​	**TXT Environment:** `conda list --explicit > pkgs.txt`



**Activate/Deactivate Environment:** `conda activate/deactivate <env>`

**List [Revision to] Packages:** `conda list [--name <env>] [--revisions]`

**Restore Environment:** `conda install --name <env> --revisions <number>`

**Delete Environment:** `conda remove --name <env> --all`

**Clone Environment:** `conda create --clone <env> --name <newenv>`



```shell
conda env update --file <environment.yml>  --prune
```

`--help`



