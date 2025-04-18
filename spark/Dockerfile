FROM tabulario/spark-iceberg

USER root 

# Install required Hadoop AWS and Iceberg dependencies
ADD https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.3.2/hadoop-aws-3.3.2.jar /opt/spark/jars/
ADD https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.11.901/aws-java-sdk-bundle-1.11.901.jar /opt/spark/jars/
ADD https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-common/3.3.2/hadoop-common-3.3.2.jar /opt/spark/jars/

# Set correct permissions
RUN chmod 644 /opt/spark/jars/hadoop-*.jar /opt/spark/jars/aws-java-sdk-bundle-1.11.901.jar

# Copy necessary files before pip install
COPY requirements.txt /home/iceberg/requirements.txt

# Install pip and increase the timeout
RUN apt-get update && apt-get install -y python3-pip && \
    pip3 install --default-timeout=100 -r /home/iceberg/requirements.txt

# Copy the rest
COPY entrypoint.sh /home/iceberg/entrypoint.sh
COPY jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

# Make sure .jupyter directory exists
RUN mkdir -p /root/.jupyter

# Install Jupyter Notebook
RUN pip3 install notebook

# Set permissions for scripts
RUN chmod +x /home/iceberg/entrypoint.sh

# Expose necessary ports
EXPOSE 8888 8080 10000 10001

# Set working directory
WORKDIR /home/iceberg/notebooks

# Entrypoint for launching the notebook via script
ENTRYPOINT ["/home/iceberg/entrypoint.sh"]
