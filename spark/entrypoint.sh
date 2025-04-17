#!/bin/sh
set -e

# Install Python dependencies
pip install -r /home/iceberg/requirements.txt

# Start Jupyter Notebook
jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password=''