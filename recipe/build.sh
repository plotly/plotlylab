#!/usr/bin/env bash

# Install plotlylab wrapper
python -m pip install --no-deps --ignore-installed .

# Install developmnet Python libraries
# (these will move to conda packages and be listed in meta.yaml)
REPOS=/Users/jmmease/Plotly/repos/
python -m pip install $REPOS/jupyterlab_dash/

# Avoid "JavaScript heap out of memory" errors during extension installation
export NODE_OPTIONS=--max-old-space-size=4096


export JUPYTERLAB_DIR=$PREFIX/share/jupyter/plotlylab

# Extensions to install
jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38 --no-build
jupyter labextension install plotlywidget@0.5.0 --no-build
jupyter labextension install @jupyterlab/plotly-extension@0.18 --no-build
jupyter labextension install jupyterlab-chart-editor@1.0 --no-build
jupyter labextension install $REPOS/jupyterlab_plotlyhelp/ --no-build
jupyter labextension install $REPOS/plotlylab-light-theme/ --no-build
jupyter labextension install $REPOS/jupyterlab_dash/ --no-build
jupyter labextension install @mflevine/jupyterlab_html --no-build

jupyter lab build --name='PlotlyLab'
jupyter lab clean

unset NODE_OPTIONS