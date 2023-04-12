# in your Dockerfile
FROM sphinxdoc/sphinx

WORKDIR /docs
ADD docs/* /docs/
ADD requirements.txt /docs
RUN ls -las . /docs/
RUN pip3 install -r requirements.txt