FROM ubuntu:20.04
LABEL maintainer="Jaeyoung Chun (chunj@mskcc.org)"

# non-interactive
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y build-essential r-base

RUN apt-get install -y libcurl4-openssl-dev libssl-dev

# copy script that installs R packages
COPY install-packages.R /opt/install-packages.R

# install packages
RUN Rscript --vanilla /opt/install-packages.R
