from setuptools import setup, Command

version = '0.1.0a1'


class WriteEnvironmentFileCommand(Command):
    description = 'Generate class hierarchy from Plotly JSON schema'
    user_options = []

    def initialize_options(self):
        pass

    def finalize_options(self):
        pass

    def run(self):
        with open('environments/plotlylab.yaml', 'w') as f:
            f.write("""\
name: plotlylab_{version}
channels:
  - main
  - plotly
  - r
dependencies:
  - plotlylab ={version}
""".format(version=version))


setup_args = dict(
    name='plotlylab',
    description='The Plotly JupyterLab distribution',
    version=version,
    packages=['plotlylab'],
    entry_points={'console_scripts': [
        'plotly-lab = plotlylab.labapp:main',
        'plotly-labextension = plotlylab.labextensionapp:main',
        'plotly-labhub = plotlylab.labhubapp:main'
    ]},
    author='The Plotly Development Team',
    url='https://github.com/plotly/plotlylab',
    license='MIT',
    platforms="Linux, Mac OS X, Windows",
    cmdclass=dict(writeenvironment=WriteEnvironmentFileCommand)
)

setup(**setup_args)
