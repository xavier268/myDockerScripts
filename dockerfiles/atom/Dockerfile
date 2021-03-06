######################################
# Atom GUI container (centos:7 based)
######################################
# 
# Usage :
#       docker build -t atom .
#       docker run -it --rm -v /tmp:/tmp -v /your/local/directory:/workdir -e DISPLAY atom
# 
# Updated july 2017
#_____________________________________

FROM centos:7
LABEL maintainer="Xavier gandillot<xavier@gandillot.com>"

ENV ATOM_VERSION=1.18.0

RUN yum -y update && \
    yum install -y mc \
    wget  \
    git \
    curl \
    ca-certificates \
    gtk2 \
    libXtst \
    nss \
    GConf2 \
    libcap \
    libnotify \
    gvfs \
    xdg-utils \
    alsa-lib \
    alsa-utils \
    mesa-libGL mesa-dri-drivers \
    firefox \
    xorg-x11-fonts-* dejavu-sans-mono-fonts dejavu-lgc-sans-mono-fonts gnu-free-mono-fonts liberation-mono-fonts \
    kbd xorg-x11-drv-keyboard \
    &&  wget https://github.com/atom/atom/releases/download/v${ATOM_VERSION}/atom.x86_64.rpm \
    &&  yum localinstall -y atom.x86_64.rpm \
    && rm atom.x86_64.rpm \
    && yum clean all

RUN dbus-uuidgen > /etc/machine-id
RUN useradd -u 1000 developper 


# We need to create an empty dir and set the owner on it for the volume to inherit these permissions.
# This will only serve if the volume is being created here. It will not affect the content of an existing volume !
RUN mkdir /workdir && chown -R 1000:1000 /workdir
VOLUME /workdir
WORKDIR /workdir

# It is REQUIRED not to run as root inside the container or X11 will fail.
USER 1000:1000


CMD ["bash","-c","atom -f"] 

