#!/bin/sh

docker run --rm -v $HOME/notebooks/:/home/jovyan/work/ -p 8888:8888 --name jyputerjavascript datainpoint/ijavascript-notebook 
