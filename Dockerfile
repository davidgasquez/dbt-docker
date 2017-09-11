FROM python

ENV USER_NAME dbt
ENV DBT_DIR /dbt

# Update and install system packages
RUN apt-get update -y && \
    apt-get install --no-install-recommends -y -q \
        git libpq-dev python-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create dbt user with UID=1000 and in the 'users' group
RUN useradd -m -s /bin/bash -N -u 1000 $USER_NAME && \
    mkdir -p $DBT_DIR && \
    chown $USER_NAME $DBT_DIR

RUN pip install dbt

WORKDIR $DBT_DIR

CMD ["bash"]