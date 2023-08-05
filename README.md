# Data Science Project Template.

*EN*

This repository aims to streamline the generation of projects in Python that employ diverse technologies. It relies on pyenv for virtual environment management and isolation of project dependencies. Additionally, it utilizes poetry for dependency management to ensure project reproducibility, and sphinx as a tool for documentation management.

Version 0.0.1 of this project enables agile and effective creation of data science-oriented projects within Linux environments. However, it comes with certain limitations, such as:

- The need to manually add the LICENSE file.
- The need to manually add the .gitignore file.
- The need to manually create the README.md file.
- The need for manual synchronization with the version control system.

We are actively working on enhancing these areas in future releases to provide a smoother experience during the initial project setup.

----
*ES*

Este repositorio tiene como objetivo simplificar la generación de proyectos en Python que empleen diversas tecnologías. Se apoya en pyenv para la administración de entornos virtuales y el aislamiento de las dependencias del proyecto. Además, utiliza poetry para la gestión de las dependencias y garantizar la reproducibilidad de los proyectos, y sphinx como herramienta para el manejo de la documentación.

La versión 0.0.1 de este proyecto posibilita la creación ágil y eficaz de proyectos orientados a la ciencia de datos, dentro de entornos Linux. Sin embargo, presenta algunas limitaciones, como las siguientes:

- La necesidad de agregar el archivo LICENSE de manera manual.
- La necesidad de agregar el archivo .gitignore de forma manual.
- La necesidad de crear manualmente el archivo README.md.
- La necesidad de sincronizar manualmente con el sistema de control de versiones.

Estamos trabajando para mejorar estas áreas en futuras versiones y brindar una experiencia más fluida en la configuración inicial del proyecto.

## Requirements to use the template.
- Python 3.5+
- Git
- Pyenv
- Poetry

## Installation manual requirements to use the template.
### *Python* 
**EN:** If you're using an Ubuntu distribution, there's a high chance that you already have a version of Python installed. If not, please follow the [official Python installation guide](https://www.python.org/).

**ES:** Si estás utilizando una distribución de Ubuntu, es muy probable que ya tengas instalada una versión de Python. En caso contrario, te recomendamos seguir la [guía oficial de instalación de Python](https://www.python.org/) para realizar el proceso.

### *GIT*
**EN:** If you're using a Linux-based distribution, we recommend following the [official Git installation guide](https://git-scm.com/) to complete the process.

**ES:** Si estás utilizando una distribución basada en Linux, te recomendamos seguir la [guía oficial de instalación de Git](https://git-scm.com/) para realizar el proceso.

### *Pyenv*
**EN:**
Installation in Ubuntu we would have to do the following:
~~~
# Packages that must be installed
$ sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev git

# Download and Run Installer
$ curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# We add environment variables
$ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

# Add pyenv initializer
$ echo 'eval "$(pyenv init -)"' >> ~/.bashrc
$ echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# We restart the shell to appreciate the changes
$ exec "$SHELL"
~~~

**ES:**
Instalación en Ubuntu tendríamos que realizar lo siguiente:
~~~
# Paquetes que deben estar instalados
$ sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils tk-dev git

# Descargar e Ejecutar Instalador
$ curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# Agregamos variables de Entorno
$ echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
$ echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc

# Agregamos inicializador de pyenv
$ echo 'eval "$(pyenv init -)"' >> ~/.bashrc
$ echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# Reiniciamos la shell para apreciar los cambios
$ exec "$SHELL"
~~~

### *Poetry*
**EN:** If you're using a Linux-based distribution, we recommend following the [official Poetry installation guide](https://python-poetry.org/) to complete the process.

**ES:** Si estás utilizando una distribución basada en Linux, te recomendamos seguir la [guía oficial de instalación de Poetry](https://python-poetry.org/) para realizar el proceso.

## To start a new project, run.
**EN:**

- Download the repository and store it in the folder ".Local/share/Template_Projected_Data_Science"
- Navigate to the directory in which you want to create the new project and run:
~~~
bash ~/.local/share/Template_Projected_Data_Science/install.sh Project_Name Python_Version
~~~
- Configure the documentation manager
~~~
# Run the below command inside your docs folder
# After running the command, accept the defaults.
$ cd Project_Name/docs
$ sphinx-quickstart
~~~

Go to your conf.py file and uncomment line numbers 13, 14 and 15. Change os.path.abspath('.') to os.path.abspath('..'). Here, we tell Sphinx that the code resides outside of the current documents folder.

Now go to the extensions part and add the extensions given below.

~~~
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.napoleon'
]
~~~

Lastly, go to themes and replace 'alabaster' with 'sphinx_rtd_theme'. The complete updated conf.py file is shown below:

~~~
# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
import os
import sys
sys.path.insert(0, os.path.abspath('..'))

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'template'
copyright = '2023, *'
author = '*'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.napoleon'
]

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

language = 'es'

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
~~~

To generate the .rst files, go to the main sphinx_basics folder and run the command:
~~~
sphinx-apidoc -o docs src/
~~~

Now, include the generated file modules.rst in yourindex.rst
~~~
.. template documentation master file, created by
   sphinx-quickstart on Fri Aug  4 18:04:05 2023.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to template's documentation!
====================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   modules

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
~~~

To generate the beautiful documentation, go into your documents folder and run the command:
~~~
make html
~~~

Now, suppose you made some changes to your code and now you want to rebuild that HTML, go to your documents folder and type:
~~~
make clean html
make html
~~~

**ES:**

- Descargue el repositorio y almacenarlo en la carpeta ".Local/share/Template_Projected_Data_Science"
- Navega hacia el directorio en el que deseas crear el nuevo proyecto y ejecuta:
~~~
bash ~/.local/share/Template_Projected_Data_Science/install.sh Project_Name Python_Version
~~~
- Configurar el gestor de documentación
~~~
# Run the below command inside your docs folder
# After running the command, accept the defaults.
$ cd Project_Name/docs
$ sphinx-quickstart
~~~

Vaya a su archivo conf.py y descomente los números de línea 13, 14 y 15. Cambie os.path.abspath('.') a os.path.abspath('..'). Aquí, le decimos a Sphinx que el código reside fuera de la carpeta de documentos actual.

Ahora vaya a la parte de extensiones y agregue las extensiones que se indican a continuación.

~~~
extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.napoleon'
]
~~~

Por último, vaya a temas y reemplace 'alabaster' con 'sphinx_rtd_theme'. El archivo conf.py actualizado completo se muestra a continuación:

~~~
# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
import os
import sys
sys.path.insert(0, os.path.abspath('..'))

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'template'
copyright = '2023, *'
author = '*'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.viewcode',
    'sphinx.ext.napoleon'
]

templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']

language = 'es'

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'sphinx_rtd_theme'
html_static_path = ['_static']
~~~

Para generar los archivos .rst, vaya a la carpeta principal sphinx_basics y ejecute el comando:
~~~
sphinx-apidoc -o docs src/
~~~

Ahora, incluya el archivo generado modules.rsten suindex.rst
~~~
.. template documentation master file, created by
   sphinx-quickstart on Fri Aug  4 18:04:05 2023.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to template's documentation!
====================================

.. toctree::
   :maxdepth: 2
   :caption: Contents:

   modules

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
~~~

Para generar la hermosa documentación, ingrese a su carpeta de documentos y ejecute el comando:
~~~
make html
~~~

Ahora, supongamos que hizo algunos cambios en su código y ahora quiere reconstruir ese HTML, vaya a su carpeta de documentos y escriba:

~~~
make clean html
make html
~~~

## The resulting directory structure.

The directory structure of your new project looks like this:

~~~
├── LICENSE
├── README.md                       <- The top-level README for developers using this project.
├── data
│   ├── external                    <- Data from third party sources.
│   ├── interim                     <- Intermediate data that has been transformed.
│   ├── processed                   <- The final, canonical data sets for modeling.
│   └── raw                         <- The original, immutable data dump.
├── docs                            <- A default Sphinx project; see sphinx-doc.org for details
├── models                          <- Trained and serialized models, model predictions, or model summaries
├── notebooks                       <- Jupyter notebooks. Naming convention is a number (for ordering),
│                                      the creator's initials, and a short `-` delimited description, e.g.
│                                      `1.0-jqp-initial-data-exploration`.
├── poetry.lock
├── pyproject.toml                  <- Will orchestrate your project and its dependencies
├── references                      <- Data dictionaries, manuals, and all other explanatory materials.
├── reports                         <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures                     <- Generated graphics and figures to be used in reporting
└── src                             <- Source code for use in this project.
    ├── data                        <- Scripts to download or generate data
    │   └── __init__.py
    ├── dataWrangling               <- Cleaning and organizing data for analysis
    │   └── __init__.py
    ├── eda                         <- Exploring and summarizing data to gain insights
    │   └── __init__.py
    ├── etl                         <- Extracting, transforming, and loading data between systems.          
    │   └── __init__.py
    ├── models                      <- Scripts to train models and then use trained models to make predictions
    │   └── __init__.py
    ├── utils                       <- Miscellaneous code goes here.
    │   └── __init__.py
    └── viz                         <- Graphics and visualization development specific work should go here
        └── __init__.py
~~~

## Contributing.
**EN:** 

The goal of this project is to make it easier to start, structure, and share an analysis. [Pull requests](https://github.com/rodiguezjuan/Template_Projected_Data_Science/pulls) and filing [issues](https://github.com/rodiguezjuan/Template_Projected_Data_Science/issues) is encouraged. We'd love to hear what works for you, and what doesn't.

If you use the project, link back to this page or [give us a holler](https://github.com/rodiguezjuan/Template_Projected_Data_Science) and [let us know!](rodriguezjuan001@outlook.com)

**ES:**

El objetivo de este proyecto es facilitar el inicio, la estructuración y el intercambio de un análisis. Se recomiendan las [solicitudes de extracción](https://github.com/rodiguezjuan/Template_Projected_Data_Science/pulls) y la presentación de [problemas](https://github.com/rodiguezjuan/Template_Projected_Data_Science/issues). Nos encantaría saber qué funciona para usted y qué no.

Si usa el proyecto, vincule a esta [página]((https://github.com/rodiguezjuan/Template_Projected_Data_Science)) o [dénos un grito y ¡háganos saber!](rodriguezjuan001@outlook.com)

## Credits
This project is heavily influenced by [drivendata's - Cookiecutter Data Science](https://github.com/drivendata/cookiecutter-data-science/tree/master), [camartinezbu - cookiecutter-python-project](https://github.com/camartinezbu/cookiecutter-python-project), [jvelezmagic- cookiecutter-conda-data-science](https://github.com/jvelezmagic/cookiecutter-conda-data-science), Kaggle and Conda. 

## referencias
- https://www.python.org/
- https://git-scm.com/
- https://deivguerrero.medium.com/desarrollando-con-python-y-pyenv-part-1-b9c3dfb1cf9a
- https://github.com/pyenv/pyenv
- https://python-poetry.org/
- https://www.digitalocean.com/community/tutorials/how-to-install-poetry-to-manage-python-dependencies-on-ubuntu-22-04
- https://towardsdatascience.com/documenting-python-code-with-sphinx-554e1d6c4f6d
- https://www.sphinx-doc.org/en/master/
- https://medium.com/@irenenafula/data-wrangling-vs-eda-vs-etl-7ddfd6e0e59e