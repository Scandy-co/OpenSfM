FROM scandy-co/opensfm-docker-base:v1

COPY . /source/OpenSfM

WORKDIR /source/OpenSfM

RUN pip install -r requirements.txt && \
    python setup.py build

# tell matplotlib not to try to visual anything because we're in a docker
RUN mkdir -p /root/.config/matplotlib && echo "backend : Agg" > /root/.config/matplotlib/matplotlibrc
