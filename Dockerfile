FROM asciidoctor/docker-asciidoctor:latest

# WORKDIR /home/node/app
# RUN npm install

# Nodejs required for the runtime 
RUN apk add --no-cache \ 
    nodejs

# Build tools required by bytefield-svg and wavedrom-cli
RUN apk add --no-cache --virtual .nodejsmakedepends\
    g++ \
    cairo-dev \
    giflib-dev \
    libjpeg-turbo-dev \
    pango-dev \
    pixman-dev \
    npm \
  && npm install -g bytefield-svg \
  && npm install -g wavedrom-cli --unsafe \
  && apk del -r --no-cache .nodejsmakedepends

CMD ["/bin/bash"]
