# azure-terraform-vault

[![Build Status](https://travis-ci.org/visibilityspots/dockerfile-az-cli-terraform-vault.svg?branch=master)](https://travis-ci.org/visibilityspots/dockerfile-az-cli-terraform-vault)[![Anchore Image Overview](https://anchore.io/service/badges/image/ad407312799b3067e34ab4b84b232eb5b47d57755f259598287007e53c56ddd5)](https://anchore.io/image/dockerhub/visibilityspots%2Fdockerfile-az-cli-terraform-vault%3Alatest)

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
