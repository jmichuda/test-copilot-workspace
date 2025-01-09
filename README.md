# test-copilot-workspace

This is a demo project that includes both R and Python environments.

## R Environment

The R environment is managed using `renv`. To set up the R environment, follow these steps:

1. Install `renv` in your R project by running `install.packages("renv")` in your R console.
2. Initialize `renv` in your project by running `renv::init()`. This will create a `renv` directory and a `renv.lock` file in your project.
3. Install the required R packages using `renv::install("package_name")`. This will add the packages to the `renv.lock` file.
4. To ensure the R environment is reproducible, commit the `renv.lock` file to your version control system.
5. To restore the R environment on another machine, run `renv::restore()` in the R console. This will install the packages specified in the `renv.lock` file.

## Python Environment

The Python environment is managed using `pipenv`. To set up the Python environment, follow these steps:

1. Install `pipenv` by running `pip install pipenv` in your terminal.
2. Create a `Pipfile` by running `pipenv install` in your project directory.
3. Install the required Python packages using `pipenv install package_name`. This will add the packages to the `Pipfile`.
4. To ensure the Python environment is reproducible, commit the `Pipfile` and `Pipfile.lock` to your version control system.
5. To restore the Python environment on another machine, run `pipenv install` in your project directory. This will install the packages specified in the `Pipfile.lock`.

## Containerization

The project is containerized using Docker. The Dockerfile sets up a hybrid R/python environment. To build and run the Docker container, follow these steps:

1. Build the Docker image by running `docker build -t hybrid-r-python .` in your project directory.
2. Run the Docker container by running `docker run -it hybrid-r-python` in your terminal.

## CI/CD

The project uses GitHub Actions for CI/CD. The workflow is set up to rebuild containers on merges to the main branch. The workflow file is located in the `.github/workflows/ci.yml` directory.
