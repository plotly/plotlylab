## PlotlyLab
WIP project to bundle a collection of Plotly-related JupyterLab extensions
into a single conda package.  For background on this approach,
see https://github.com/jonmmease/jupyterlab_delux

Try now with Binder:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/plotly/plotlylab/master?urlpath=lab%2Ftree%2Fnotebooks)



**Note:** A conda environment with PlotlyLab installed with take up around
3.5 GB of disk space

### Demo (screencasts)

Usage and ideas behind PlotlyLab

1. [PlotlyLab prototype overview](https://drive.google.com/file/d/1AkCGyemyZSNpvW9plDGJPQ2K3MCidIOW/view?usp=sharing)

2. [PlotlyLab as a conda package](https://drive.google.com/file/d/1YrEOTn37Ofti3ubHfgyJlfTJE9d1Vjy3/view?usp=sharing)

3. [Ideas for future directions](https://drive.google.com/file/d/1PlOMGmbcqLDHnJdOe_DAen3U1k59KR9n/view?usp=sharing)

4. [R language support](https://drive.google.com/file/d/1tZRQP2zUh5-eD1W8IKuBQj1DJnllDh6e/view?usp=sharing)

### Installation instructions

 1. Download and install miniconda: https://conda.io/miniconda.html
 
 2. Create a new conda environment and install PlotlyLab 

```
$ conda create -n plotlylab -c plotly -c r python plotlylab
$ conda activate plotlylab
```

 3. Launch plotlylab
 
```
$ plotly-lab
```

 4. Try out the notebooks in the
 [`notebooks/`](https://github.com/plotly/plotlylab/tree/master/notebooks)
 directory for a guided tour
 
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

Update version of PlotlyLab after new releases

```
$ conda update -c plotly plotlylab
```
 
Uninstall `plotlylab` environment

```
$ conda remove -n plotlylab --all
```
 
### Build instructions
Build the `plotlylab` conda package with
```bash
$ conda build -c plotly -c r recipe/
```

Then test it out by creating a new conda environment

```
$ conda create -n try_plotlylab -c plotly -c r --use-local python plotlylab
$ conda activate try_plotlylab
```
