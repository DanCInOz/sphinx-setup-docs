# in your Dockerfile
FROM sphinxdoc/sphinx-latexpdf

WORKDIR /docs
RUN pip3 install -r requirements.txt