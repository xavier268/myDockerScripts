######################################
# Firefox GUI container (centos:7 based)
######################################
# 
# Usage :
#       docker build -t firefox .
#       docker run -it --rm -v /tmp:/tmp -e DISPLAY firefox
# 
#
#_____________________________________

FROM centos:7
LABEL maintainer="Xavier gandillot<xavier@gandillot.com>"

RUN yum -y update \
 && yum install -y firefox mc \
 && yum clean all \
 && dbus-uuidgen > /etc/machine-id \
 && useradd developper

# It is REQUIRED not to run as root inside the container or X11 will fail
USER developper

CMD firefox https://www.google.com

