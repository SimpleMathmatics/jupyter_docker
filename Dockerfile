FROM python:3.8

WORKDIR /jup

RUN pip install --no-cache-dir jupyter==1.0.0

RUN pip install --no-cache-dir jupyterlab

RUN pip install --upgrade jupyterlab jupyterlab-git



EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]