FROM python:3.8

WORKDIR /jup

RUN pip install --no-cache-dir jupyter

RUN pip install --no-cache-dir jupyterlab==2.0.0

RUN pip install jupyterlab-git

RUN jupyter serverextension enable --py jupyterlab_git --sys-prefix





EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]