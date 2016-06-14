#!/bin/bash

rm packer_virtualbox-iso_virtualbox.box || true
packer build -only virtualbox-iso packer.json
vagrant box remove vagrant_machine || true
vagrant box add vagrant_machine packer_virtualbox-iso_virtualbox.box