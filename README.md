# jupyter by using docker

```bash
docker build . -t jupyter/notebook
```

```bash
docker run --rm -it -p 8888:8888 -v /home/burcu/jupyter/workdir:/home/jupyter jupyter/notebook
```

[I 16:11:27.669 NotebookApp] Writing notebook server cookie secret to /home/jupyter/.local/share/jupyter/runtime/notebook_cookie_secret
[I 16:11:29.137 NotebookApp] Serving notebooks from local directory: /home/jupyter
[I 16:11:29.138 NotebookApp] The Jupyter Notebook is running at:
[I 16:11:29.140 NotebookApp] http://30ef30496c7c:8888/?token=4d31901ee88330760618ed42aa73209dcbf7cb608d78d3f1
[I 16:11:29.141 NotebookApp]  or http://127.0.0.1:8888/?token=4d31901ee88330760618ed42aa73209dcbf7cb608d78d3f1
[I 16:11:29.142 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[W 16:11:29.159 NotebookApp] No web browser found: could not locate runnable browser.
[C 16:11:29.161 NotebookApp]

    To access the notebook, open this file in a browser:
        file:///home/jupyter/.local/share/jupyter/runtime/nbserver-1-open.html
    Or copy and paste one of these URLs:
        http://30ef30496c7c:8888/?token=4d31901ee88330760618ed42aa73209dcbf7cb608d78d3f1
     or http://127.0.0.1:8888/?token=4d31901ee88330760618ed42aa73209dcbf7cb608d78d3f1

