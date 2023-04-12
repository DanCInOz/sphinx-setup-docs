# in your Dockerfile
FROM sphinxdoc/sphinx

RUN pwd
WORKDIR /docs
RUN pwd
RUN ls -las .
ADD docs/source /docs/source
ADD requirements.txt /docs
ADD Makefile /docs
RUN ls -las .
RUN pip3 install -r requirements.txt