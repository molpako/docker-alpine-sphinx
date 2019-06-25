FROM python:alpine3.6

RUN apk update
RUN apk add gcc g++ make git curl
RUN apk add zlib-dev jpeg-dev

RUN curl -s https://oscdl.ipa.go.jp/IPAfont/ipag00303.zip -o ipag00303.zip
RUN unzip ipag00303.zip
RUN mkdir -p /usr/share/fonts/ipa
RUN cp ipag00303/ipag.ttf /usr/share/fonts/ipa
RUN fc-cache -fv

RUN pip install --upgrade pip
RUN pip install -U sphinx sphinx-rtd-theme
RUN pip install -U sphinxcontrib-actdiag sphinxcontrib-blockdiag sphinxcontrib-nwdiag sphinxcontrib-seqdiag

