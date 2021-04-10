# azure-terraform-vault

[![build status](https://github.com/visibilityspots/dockerfile-az-cli-terraform-vault/actions/workflows/main.yaml/badge.svg)](https://github.com/visibilityspots/dockerfile-az-cli-terraform-vault/actions/workflows/main.yaml)
[![docker image size](https://img.shields.io/docker/image-size/visibilityspots/azure-cli-terraform-vault/latest)](https://hub.docker.com/r/visibilityspots/azure-cli-terraform-vault)
[![docker pulls](https://img.shields.io/docker/pulls/visibilityspots/azure-cli-terraform-vault.svg)](https://hub.docker.com/r/visibilityspots/azure-cli-terraform-vault/)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)

## run

```docker run --name azure-cli-terraform-vault --rm -ti visibilityspots/azure-cli-terraform-vault:lastest az --version```

## configuration
### az login

```docker run --name azure-cli-terraform-vault --rm -ti -v ${HOME}/.azure:/root/.azure visibilityspots/azure-cli-terraform-vault:lastest az login```

## test

I wrote some tests in a goss.yaml file which can be executed by [dgoss](https://github.com/aelsabbahy/goss/tree/master/extras/dgoss)

```
dgoss run --name az-terraform-vault --rm -ti visibilityspots/azure-cli-terraform-vault:latest
INFO: Starting docker container
INFO: Container ID: 661de373
INFO: Sleeping for 0.2
INFO: Running Tests
Command: vault --version | head -1: exit-status: matches expectation: [0]
Command: vault --version | head -1: stdout: matches expectation: [Vault v0.10.2 ('3ee0802ed08cb7f4046c2151ec4671a076b76166')]
Command: terraform --version | head -1: exit-status: matches expectation: [0]
Command: terraform --version | head -1: stdout: matches expectation: [Terraform v0.11.7]
Command: az --version | head -1: exit-status: matches expectation: [0]
Command: az --version | head -1: stdout: matches expectation: [azure-cli (2.0.34)]


Total Duration: 1.614s
Count: 6, Failed: 0, Skipped: 0
INFO: Deleting container
```

## License
Distributed under the MIT license
