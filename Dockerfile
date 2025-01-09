# Use the rocker/r-ver base image for R
FROM rocker/r-ver:latest

# Install Python and pipenv
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install pipenv

# Set up the R environment with renv
RUN R -e "install.packages('renv')"
COPY . /app
WORKDIR /app
RUN R -e "renv::restore()"

# Set up the Python environment with pipenv
RUN pipenv install --system --deploy

# Set the entrypoint to bash
ENTRYPOINT ["/bin/bash"]
