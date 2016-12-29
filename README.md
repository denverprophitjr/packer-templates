# Packer Templates

Packer templates for building virtual machine images.


## Requirements

  - [Packer](http://packer.io/)
  - [Vagrant](http://vagrantup.com/)
  - [VirtualBox](http://virtualbox.org/) (if you want to build the VirtualBox box)
  - [VMware Workstation](http://vmware.com/products/workstation.html) (if you want to build the VMware box)
  - [QEMU](http://qemu.org/) (if you want to build the Libvirt box)


## Available machines

OS | Version | Details
---|---------|--------
CentOS | 7.3.1116 | CentOS Minimal installation, packages updated on 29th December.


## Usage

To build images for all providers (QEMU, Virtualbox, VMware):

    $ packer build centos-7.3-x86_64.json

To build image for only one provider use `-only` option:

    $ packer build -only=virtualbox-iso centos-7.3-x86_64.json

### Testing images

You can test images created with a minimal `Vagrantfile` provided:

    $ vagrant up virtualbox --provider virtualbox

### Configuration

You can change details of your boxes throught user variable file:

    $ packer build -var-file=vars/variables.json centos-7.3-x86_64.json

## Pre-built boxes

You can use the pre-built boxes hosted on Atlas:

    $ vagrant box add viniciusfs/centos7

## Authors

  - Vinícius Figueiredo <viniciusfs@gmail.com>


## License

    The MIT License (MIT)

    Copyright (c) 2016 Vinícius Figueiredo

    Permission is hereby granted, free of charge, to any person obtaining a copy of
    this software and associated documentation files (the "Software"), to deal in
    the Software without restriction, including without limitation the rights to
    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
    the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

