######################################
# The SLAP.js  text editor
######################################
#
# Usage : 
#     docker run -it --rm -v dataToEdit:/workdir slap
# 
#
#_____________________________________

FROM node:alpine AS slap
LABEL maintainer="Xavier gandillot<xavier@gandillot.com>"
LABEL comment="SLAP.js text editor"

RUN apk update \
    && apk add make python linux-headers g++ \
    && npm install slap \
    && apk del g++ make linux-headers 

VOLUME /workdir
WORKDIR /workdir

CMD /node_modules/slap/slap.js


