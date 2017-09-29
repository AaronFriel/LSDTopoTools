FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y git gdal-bin python-gdal libfftw3-dev cmake

WORKDIR /topo

ADD install.sh /topo

# Runs install.sh which ends in a bash shell, so can run interactively.
CMD [ /topo/install.sh ]

