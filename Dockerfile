FROM node:argon-slim
MAINTAINER Your Name <your@email.com>

RUN npm install -g gitbook && npm install -g gitbook-cli && gitbook install \
&& rm -rf /tmp/* && mkdir /mybook

VOLUME /mybook
WORKDIR /mybook

ENTRYPOINT ["/usr/local/bin/gitbook"]
CMD ["build"]
