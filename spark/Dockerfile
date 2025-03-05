FROM tabulario/spark-iceberg

USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install --upgrade pip

# Install Jupyter and PySpark
RUN pip install jupyter notebook findspark pandas boto3

# Copy necessary files
COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
COPY requirements.txt /home/iceberg/requirements.txt
COPY entrypoint.sh /home/iceberg/entrypoint.sh

# Set permissions for entrypoint.sh
RUN chmod +x /home/iceberg/entrypoint.sh

WORKDIR /home/iceberg/notebooks

# Use entrypoint.sh as the container startup command
ENTRYPOINT ["/home/iceberg/entrypoint.sh"]
