##################################################
#  Developpement image
##################################################

FROM node:8-alpine 
LABEL maintainer="Xavier Gandillot<xavier@gandillot.com>"
LABEL comment="Node image to use for developpement"

RUN apk add --no-cache bash git 
RUN npm install -g @angular/cli

# default ng serve port
EXPOSE 4200

# The dist folder is outside the my-app folder, so that the local /my-app/dist folder can be destryed on compliation.
# You need to remember to copy output there when you compile/deploy !
VOLUME /dist

# You cannot use the name 'app' with ng cli !
VOLUME /my-app

WORKDIR /my-app

# Default command : create an empty my-app application, install and compile it.
CMD ["bash","-c","cd / && ng new my-app && cd /my-app && npm install && ng lint --type-check true"]

