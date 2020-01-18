#!/bin/bash

# exit if a command returns a non-zero exit code and also print the commands and their args as they are executed
#set -e -x

pulumi login

#yarn install
pulumi stack select product-catalog-service
# The following is just a sample config setting that the hypothetical pulumi
# program needs.
# Learn more about pulumi configuration at: https://www.pulumi.com/reference/config/
pulumi config set mysetting:myvalue
pulumi up
