## Overview
This directory contains conda recipes for dependencies of plotlylab that
are not otherwise available on the main, r, or plotly anaconda channels.

## Build instructions
Build a single package, e.g. `dash`

```
$ conda build dash/
```

Build all packages
```
$ ./conda_build_all
```

## Upload instructions
```
$ anaconda login
$ anaconda upload /path/to/anaconda/conda-build/noarch/package_name-X.Y.Z.tar.bz2
```
