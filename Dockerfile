FROM azuresdk/azure-cli-python

LABEL authors="Jeroen Hoekx - Stijn Tintel"
LABEL maintainer="Jan Collijs"

VOLUME /terraform

ENV terraform_version 0.11.5
ENV vault_version 0.9.6

RUN wget --quiet https://releases.hashicorp.com/terraform/$terraform_version/terraform_${terraform_version}_linux_amd64.zip && \
    unzip terraform_${terraform_version}_linux_amd64.zip -d bin/ && \
    rm terraform_${terraform_version}_linux_amd64.zip && \
    wget --quiet https://releases.hashicorp.com/vault/${vault_version}/vault_${vault_version}_linux_amd64.zip && \
    unzip vault_${vault_version}_linux_amd64.zip -d bin/ && \
    rm vault_${vault_version}_linux_amd64.zip

WORKDIR /terraform

CMD bash
