FROM python:3.5

WORKDIR /jup

RUN pip install pip==20.0.2

RUN pip install --no-cache-dir jupyter==1.0.0

RUN pip install --no-cache-dir jupyterlab



EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]