# in your Dockerfile
FROM sphinxdoc/sphinx

RUN pwd
WORKDIR /docs
RUN pwd
RUN ls -las .
RUN ls -las docs/*
ADD docs/* /docs/
ADD requirements.txt /docs
RUN ls -las .
RUN pip3 install -r requirements.txt