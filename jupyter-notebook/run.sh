docker run --name jupyternotebook -d --rm -p 8888:8888 -v $HOME/notebooks/:/home/jovyan/work/ jupyter/minimal-notebook
