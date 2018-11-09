## PlotlyLab
WIP project to bundle a collection of Plotly-related JupyterLab extensions
into a single conda package.  For background on this approach,
see https://github.com/jonmmease/jupyterlab_delux

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
