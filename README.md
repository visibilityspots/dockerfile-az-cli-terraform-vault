# azure-terraform-vault

[![Build Status](https://travis-ci.org/visibilityspots/dockerfile-az-cli-terraform-vault.svg?branch=master)](https://travis-ci.org/visibilityspots/dockerfile-az-cli-terraform-vault)

## run

```docker run --name azure-cli-terraform-vault --rm -ti visibilityspots/azure-cli-terraform-vault:lastest az --version```

## configuration
### az login

```docker run --name azure-cli-terraform-vault --rm -ti -v ${HOME}/.azure:/root/.azure visibilityspots/azure-cli-terraform-vault:lastest az login```

## test

I wrote some tests in a goss.yaml file which can be executed by [dgoss](https://github.com/aelsabbahy/goss/tree/master/extras/dgoss)

```
dgoss run --name az-terraform-vault --rm -ti tm-azure-terraform:latest
INFO: Starting docker container
INFO: Container ID: 4225b114
INFO: Sleeping for 0.2
INFO: Running Tests
Command: vault --version: exit-status: matches expectation: [0]
Command: vault --version: stdout: matches expectation: [Vault v0.9.5 ('36edb4d42380d89a897e7f633046423240b710d9')]
Command: terraform --version | head -1: exit-status: matches expectation: [0]
Command: terraform --version | head -1: stdout: matches expectation: [Terraform v0.11.3]
Command: az --version | head -1: exit-status: matches expectation: [0]
Command: az --version | head -1: stdout: matches expectation: [azure-cli (2.0.29)]


Total Duration: 1.558s
Count: 6, Failed: 0, Skipped: 0
INFO: Deleting container
```

## License
Distributed under the MIT license
