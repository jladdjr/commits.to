FROM fedora:latest

RUN dnf -y update && \
    dnf -y install \
    python3 \
    python3-devel \
    python3-pip && \
    vim-minimal \
    which \
    tree \
    lsof \
    wget \
    dnf clean all

# Install tini
RUN curl -L -o /usr/bin/tini https://github.com/krallin/tini/releases/download/v0.19.0/tini-{{ tini_architecture | default('amd64') }} && \
    chmod +x /usr/bin/tini

RUN python3 -m ensurepip && pip3 install virtualenv

ADD Makefile /tmp/Makefile
RUN mkdir /tmp/requirements
ADD requirements/requirements_dev /tmp/requirements

RUN rm -rf /root/.cache && rm -rf /tmp/*

# ENTRYPOINT ["/todo.sh"]
CMD ["/bin/bash"]
EXPOSE 8080 22
