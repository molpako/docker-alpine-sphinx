FROM python:alpine3.6

RUN apk update
RUN apk add gcc g++ make git
RUN apk add zlib-dev jpeg-dev
RUN pip install --upgrade pip
RUN pip install sphinx sphinx-rtd-theme
RUN pip install sphinxcontrib-actdiag sphinxcontrib-blockdiag sphinxcontrib-nwdiag sphinxcontrib-seqdiag

