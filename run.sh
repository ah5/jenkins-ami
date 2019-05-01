#!/bin/sh

# ###############################################################
# Validations
# ###############################################################

if [[ ! -x "$(command -v packer)" ]]; then
  echo "Error: packer is not installed. Please install it and try executing this again." >&2
  exit 1
fi

# ###############################################################
# Static values
# ###############################################################

PACKER_VAR_FILE="-var-file=templates/vars.json"
PACKER_TEMPLATE="templates/jenkins_ami.json"

# ###############################################################
# Main
# ###############################################################

# Packer validate the template file
packer validate ${PACKER_VAR_FILE} ${PACKER_TEMPLATE}

# Packer build the template file
packer build -timestamp-ui ${PACKER_VAR_FILE} ${PACKER_TEMPLATE}
