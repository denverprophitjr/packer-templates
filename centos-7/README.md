# CentOS 7 Packer Template

Packer template for building CentOS 7 images.


## Requirements

  - [Packer](http://packer.io/)
  - [Vagrant](http://vagrantup.com/)
  - [VirtualBox](http://virtualbox.org/) (if you want to build the VirtualBox box)
  - [VMware Workstation](http://vmware.com/products/workstation.html) (if you want to build the VMware box)
  - [QEMU](http://qemu.org/) (if you want to build the Libvirt box)


## Available images

Image | Latest version | Details
------|----------------|--------
[CentOS 7](centos-7/README.md) | v1 | CentOS 7.3.1116 minimal installation


## Usage

### Pre-built boxes

You can use the pre-built boxes hosted on Atlas:

* [CentOS 7](https://atlas.hashicorp.com/viniciusfs/boxes/centos7)


    $ vagrant box add viniciusfs/centos7 --provider libvirt
    $ vagrant box add viniciusfs/centos7 --provider virtualbox
    $ vagrant box add viniciusfs/centos7 --provider vmware_workstation


### Building images

To build images for all providers (QEMU, Virtualbox, VMware):

    $ packer build -var-file=centos-7/versions/v1.json centos-7/template.json


To build image for only one provider use `-only` option:

    $ packer build -only=virtualbox-iso -var-file=centos-7/versions/v1.json centos-7/template.json


#### Testing images

After a build, you can test images created with a minimal `Vagrantfile` provided:

    $ vagrant up virtualbox --provider virtualbox


#### Configuration

You can change details of your boxes through variable file.

Name | Description | Default
-----|-------------|--------
`vm_version` | Version number |
`vm_description` | Short description for this image |
`atlas_token` | Credentials for Hashicorp Atlas login |
`atlas_artifact` | Artifact name for Hashicorp Atlas upload |
`user` | Username for SSH connection | root
`password` | Password for SSH connection | master
`cpus` | Default vCPU number | 1
`memory` | Default RAM size | 1024
`disk_size` | Default disk size | 10240
`headless` | If true, do not launch a GUI that shows the console of the machine being built | true
`boot_wait` | The time to wait after booting the initial virtual machine | 5s
`ssh_wait_timeout`| The time to wait until virtual machine is built, up and accepting SSH connections | 30m

Don't forget to update user and password on installation file (ie.: `http/ks.cfg`).


## Other information

* [Anaconda Kickstart Documentation](https://rhinstaller.github.io/anaconda/kickstart.html)
* [Creating the Kickstart file](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Installation_Guide/s1-kickstart2-file.html)
* [Kickstart Documentation](http://pykickstart.readthedocs.io/en/latest/kickstart-docs.html)
* [Kickstart Syntax Reference](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/Installation_Guide/sect-kickstart-syntax.html)


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
