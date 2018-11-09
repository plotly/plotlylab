from setuptools import setup

setup_args = dict(
    name='plotlylab',
    description='The Plotly JupyterLab distribution',
    version='0.1',
    packages=['plotlylab'],
    entry_points={'console_scripts': [
        'plotly-lab = plotlylab.labapp:main',
        'plotly-labextension = plotlylab.labextensionapp:main',
    ]},
    author='The Plotly Development Team',
    url='https://github.com/plotly/plotlylab',
    license='MIT',
    platforms="Linux, Mac OS X, Windows",
)

setup(**setup_args)
