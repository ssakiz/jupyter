FROM python:3.6-slim-stretch

USER root

RUN apt-get update && \
    apt-get install --no-install-recommends -qy git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


RUN pip install -U jupyter matplotlib numpy pandas scipy scikit-learn  qrcode[pil] 

ENV SHELL=/bin/bash \
    NB_USER=jupyter \
    NB_UID=1000 \
    NB_GID=100

ENV HOME=/home/$NB_USER

# We are now ready to create the user account...
RUN useradd -m -s $SHELL -N -u $NB_UID $NB_USER 

 
RUN chown -R jupyter:users $HOME         
RUN ls -al /home
RUN ls -al /

WORKDIR $HOME
USER $NB_USER

RUN mkdir /home/$NB_USER/test

EXPOSE 8888

ENTRYPOINT ["jupyter-notebook", "--ip=0.0.0.0"]

USER $NB_USER
