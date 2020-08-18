# Model Explainability and Hospital Acquired Infections
[Hospital acquired infections](https://en.wikipedia.org/wiki/Hospital-acquired_infection#:~:text=A%20hospital-acquired%20infection%20HAI,or%20other%20health%20care%20facility), or HAIs, are infections that develop while at a hospital or other healthcare facility that have no evidence of existing before a patient was admitted to the facility. The CDC approximates that [1 in 31](https://www.cdc.gov/hai/data/index.html) admitted patients will acquire at least one HAI.

We'll explore HAIs here and look at the difference between demographic and patient event data. We hope to find answers to the question "What patients seem to be most at risk for contracting an HAI?" through different machine learning tools, focusing on explainability methods after the model is trained.

## Getting Started

#### Install the prerequisites

1. Make sure you have Python 3.7 installed, installing it if necessary
    - If you have a favorite package manager, use that
    - if not, [python.org](https://www.python.org/downloads/) has binaries for many platforms
2. Make sure you have `git` installed, installing it if necessary
    - If you have a favorite package manager, use that
    - if not, [git-scm.com](https://git-scm.com/downloads) has binaries for many platforms (you won't need a GUI)
3. Install [pipenv](https://docs.pipenv.org/en/latest/)
    - on a Mac, the easiest way is probably `brew install pipenv`
    - on a Fedora Linux machine, the easiest way is probably `dnf install pipenv`
    - on Windows, if you have Python installed already, the easiest way is probably [to use `pip`](https://docs.pipenv.org/en/latest/install/#pragmatic-installation-of-pipenv)  

#### Install the notebooks and dependencies

1.  Clone this repository:  `git clone https://github.com/iionez/hai-project/`
2.  Change to this repository's directory:  `cd hai-project`
3.  Install the dependencies:  `pipenv install --skip-lock`
4.  Run the notebooks:  `pipenv run jupyter notebook`

#### Running the lab on an OpenShift cluster:

The `deploy` notebook contains information on how to set up integration with an OpenShift client and Apache Superset.

## Project Organization

    ├── LICENSE
    ├── README.md
    ├── data
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump
    │
    ├── models             <- Trained and serialized models
    │
    ├── deploy             <- Instructions on how to set up with OpenShift and Superset
    │
    ├── notebooks          <- Jupyter notebooks
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures
    │
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    └── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
                              generated with `pip freeze > requirements.txt`

Project based on the [cookiecutter data science project template](https://drivendata.github.io/cookiecutter-data-science/).


