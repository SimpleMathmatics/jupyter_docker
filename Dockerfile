FROM python:3.8

WORKDIR /jup

RUN pip install --no-cache-dir jupyter==2.0.0

RUN pip install --no-cache-dir jupyterlab

RUN pip install jupyterlab-git

RUN jupyter serverextension enable --py jupyterlab_git --sys-prefix

RUN jupyter lab build




EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]