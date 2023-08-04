import os
import sys
import errno

# rutas
path_directories = sys.argv[1]

# directorios
directories = {
    'data':['data/external', 'data/interim', 'data/processed', 'data/raw'],
    'docs':[],
    'models':[],
    'notebooks':[],
    'references':[],
    'reports':['reports/figures'],
    'src':['src/data', 'src/dataWrangling','src/eda', 'src/etl', 'src/models', 'src/utils', 'src/viz']
}

for folder in directories:
    try:
        os.mkdir(os.path.join(path_directories,folder))
    except OSError as e:
        if e.errno != errno.EEXIST:
            raise

for folder in directories:
    for sub_folder in directories[folder]:
        os.makedirs(os.path.join(path_directories,sub_folder), exist_ok=True)

# archivos
for i in directories['src']:
    path_src = os.path.join(path_directories,i)
    files_src = open(os.path.join(path_src,'__init__.py'),"w") 
    files_src.close() 