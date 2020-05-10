docker build . -t jupyter/notebook
docker run --rm -it -p 8888:8888 -v "/home/burcu/workdir:/home/jupyter" jupyter/notebook
