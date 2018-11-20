import os
import sys
from jupyterlab.labhubapp import SingleUserLabApp


class SingleUserPlotlyLabApp(SingleUserLabApp):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        os.environ['JUPYTERLAB_DIR'] = os.path.join(
            sys.prefix, 'share', 'jupyter', 'plotlylab')

        self.app_dir = os.environ['JUPYTERLAB_DIR']


def main(argv=None):
    return SingleUserPlotlyLabApp.launch_instance(argv)


if __name__ == "__main__":
    main()
