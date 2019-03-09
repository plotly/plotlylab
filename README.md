## PlotlyLab
WIP project to bundle a collection of Plotly-related JupyterLab extensions
into a single conda package.  For background on this approach,
see https://github.com/jonmmease/jupyterlab_delux

**Note:** A conda environment with PlotlyLab installed with take up around
3.5 GB of disk space

### Installation instructions

 1. Download and install miniconda: https://conda.io/miniconda.html
 
 2. Download the
 [environments/plotlylab.yaml](https://raw.githubusercontent.com/plotly/plotlylab/master/environments/plotlylab.yaml)
 environment file using your web browser or `wget`.
 
```
$ wget https://raw.githubusercontent.com/plotly/plotlylab/master/environments/plotlylab.yaml
```
 
 3. Create and activate a new conda environment for plotlylab
 
```
 $ conda env create --file plotlylab.yaml
 $ conda activate plotlylab_{version}
``` 

where `{version}` is current plotlylab version. Note that the full
`conda activate` command will be displayed at the completion of the
`conda env create` command.

 4. Launch plotlylab
 
```
$ plotly-lab
```
 
### Other commands

List preinstalled conda packages
```
$ conda list
```

List preinstalled JuptyerLab extensions

```
$ plotly-labextension list
```
 
Install an additional extension into plotlylab (requires nodejs)
```
$ plotly-labextension install some-extension
```

Launch plain JupyterLab (no preinstalled extensions)
```
$ jupyter-lab
```
 
### Build instructions
Build the `plotlylab` conda package with
```bash
$ conda build -c plotly -c r recipe/
```

Then test it out by creating a new conda environment

```
$ conda create -n try_plotlylab -c plotly -c r --use-local python=3.6 plotlylab
$ conda activate try_plotlylab
```
