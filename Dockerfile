FROM scandy-co/opensfm-docker-base:v1

COPY . /source/OpenSfM

WORKDIR /source/OpenSfM

RUN pip install -r requirements.txt && \
    python setup.py build
