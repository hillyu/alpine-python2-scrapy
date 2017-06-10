FROM alpine:3.5

RUN apk --update --no-cache add py2-pip ca-certificates musl-dev musl-utils musl-dbg gcc libevent-dev python2-dev \
  libxml2-dev libxslt-dev libffi-dev openssl-dev &&\
    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    pip install scrapy pymongo requests beautifulsoup4&& \
    rm -r /root/.cache
WORKDIR /root
