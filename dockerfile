FROM ubuntu:24.04

RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository --yes --update ppa:ansible/ansible && \
    apt install -y ansible ssh && \
    apt clean

WORKDIR /playbooks
CMD ["/bin/bash"]
