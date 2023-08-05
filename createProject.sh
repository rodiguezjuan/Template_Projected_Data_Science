#!/bin/bash

# -----------------------------------------------------------------------------
# argumentos:
# name_project -> Nombre del proyecto a construir
# version_python -> Version de python que se usara en el proyecto 
name_project=$1
python_version=$2

# constantes
description_project="Description of the project"

# crear carpeta del proyecto
mkdir $name_project
echo $(pwd)
cd $name_project

# Crear directorios 
path_project=$(pwd)
python3 ~/.local/share/Template_Projected_Data_Science/directory.py $path_project
echo $(pwd)

# Crear entorno virtual
#pyenv install $python_version
pyenv virtualenv $python_version $name_project
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

pyenv activate "$name_project"
pyenv local $name_project

# instalar requerimientos pip
pip install -U sphinx sphinx_rtd_theme

# iniciar gestor de paquetes
poetry init --name=$name_project --description="$description_project" --python=$python_version 

# agregar dependencias para ciencia de datos 
visualization_dependencies=('matplotlib' 'seaborn' 'plotly')
data_exploration_dependencies=('pandas' 'numpy' 'dask')
machine_learning_dependencies=('scikit-learn')
signs_dependencies=('scipy')
data_version_control_dependencies=('dvc')

poetry add ${visualization_dependencies[@]}
poetry add ${data_exploration_dependencies[@]}
poetry add ${machine_learning_dependencies[@]}
poetry add ${signs_dependencies[@]}
poetry add ${data_version_control_dependencies[@]}