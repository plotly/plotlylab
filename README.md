## PlotlyLab
WIP project to bundle a collection of Plotly-related JupyterLab extensions
into a single conda package.  For background on this approach,
see https://github.com/jonmmease/jupyterlab_delux

### Installation instructions (now)

 1. Download and install miniconda: https://conda.io/miniconda.html
 
 2. Download latest `plotlylab-channel.zip` artifact from
 https://github.com/plotly/plotlylab/releases.
 
 3. Unzip artifact somewhere (i.e. `/path/to/plotlylab_channel/`)
 
 4. Create and activate a new conda environment for plotlylab
 
```
 $ conda create -n try_plotlylab -c plotly -c conda-forge -c /path/to/plotlylab-channel python=3.6 plotlylab
 $ conda activate try_plotlylab
``` 

 5. Launch plotlylab
 
```
$ plotly-lab
```

### Installation instructions (Goal)
```
$ conda create -n plotlylab -c plotly python=3.6 plotlylab
$ conda activate plotlylab
$ plotly-lab 
``` 

### Other commands

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
$ conda build -c plotly -c conda-forge recipe/
```

Then test it out by creating a new conda environment

```
$ conda create -n try_plotlylab -c plotly -c conda-forge --use-local python=3.6 plotlylab
$ conda activate try_plotlylab
```
