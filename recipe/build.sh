#!/usr/bin/env bash

# Install plotlylab wrapper
python -m pip install --no-deps --ignore-installed .

# Avoid "JavaScript heap out of memory" errors during extension installation
export NODE_OPTIONS=--max-old-space-size=4096

# Set JUPYTERLAB_DIR before installing to isolate our extensions
export JUPYTERLAB_DIR=$PREFIX/share/jupyter/plotlylab

# Extensions to install
jupyter labextension install jupyterlab-dash@0.1.0-alpha.2 --no-build
jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.38 --no-build
jupyter labextension install plotlywidget@0.8.0 --no-build
jupyter labextension install @jupyterlab/plotly-extension@0.18 --no-build
jupyter labextension install jupyterlab-chart-editor@1.1 --no-build
jupyter labextension install git+ssh://git@github.com/plotly/jupyterlab_plotlyhelp.git --no-build
jupyter labextension install plotlylab-light-theme --no-build
jupyter labextension install @mflevine/jupyterlab_html --no-build

jupyter lab build --name='PlotlyLab'
jupyter lab clean

unset NODE_OPTIONS
