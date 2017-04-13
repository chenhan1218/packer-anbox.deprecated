# Packer templates for Anbox

### Overview

This repository contains [Packer](https://packer.io/) templates for creating Anbox Vagrant boxes.

## Building the Vagrant boxes with Packer

To build all the boxes, you will need [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

We make use of JSON files containing user variables to build specific versions of Ubuntu.
You tell `packer` to use a specific user variable file via the `-var-file=` command line
option.  This will override the default options on the core `anbox.json` packer template,
which builds Ubuntu 16.04 by default.

For example, to build Ubuntu 16.04, use the following:

    $ packer build -only=virtualbox-iso -var-file=ubuntu1604.json ubuntu.json

