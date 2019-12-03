# docker-devops-runner-image

This is just a quick an easy image I maintain for various projects I work with.  This is primarilly used as a gitlab runner image for CI/CD purposes in my various projects, but perhaps you can find other uses for it.  I am a big user of Kubernetes, Ansible, and Hashicorp products for personal projects, and this image represents a "toolbox" of most things I might need to support these projects. This image quite chubby in size... but hey, so am I *dealwithit.jpeg*


## Docker images from this available on dockerhub
* `nickmaccarthy/devops-runner:0.1.1` * Added `apt_packages` with packages such as `jq`.  See changelog for more info
* `nickmaccarthy/devops-runner:0.1.0` * First version.  Woot!

## Usage
* This image is primarilly built with the `build.playbook.yml` so check that out for what is actually being built inside the container.

* Most of the installed items below will be available in your `$PATH` with their version appended in to the end like
`terraform-0.11.10`, `kubectl-1.13.0`, `vault-1.2.4` etc etc.  

* All the Ansible versions are installed into their own virtualenv's in `/venvs/ansible-venv-{{ ansible_version }}`.  Each of these venv's should have all the python packages as defined in `pip_items`

* You can build this locally pretty easy with this command:
    * build it - `docker build -t devops-runner:<version> .`
    * run it -  `docker run --name devops-runner --rm -i -t devops-runner:<version> bash`

## Installed Items

### Source docker image
    * `python:3.8-buster`

### Python Versions
    * `2.7.16` - aka `python2.7` and `pip2.7` in `$PATH`
    * `3.8.0`

### apt Packages:
    * `jq`
    * `zip`
    * `unzip`
    * `curl` 
    * `wget` 
    * `default-mysql-client`
    * `postgresql-client`
    
### Default Ansible version: 
    * `2.9.1`

### Ansible Versions:
    * `2.9.1`
    * `2.8.7`
    * `2.6.20`
    * `2.5.15`
    * `2.4.6`

### Installed Pip Modules:
    * `passlib`
    * `hvac`
    * `certifi`
    * `boto`
    * `boto3`
    * `botocore`
    * `aws`
    * `awscli`
    * `virtualenv`
    * `google-auth`
    * `azure`
  
### Vault Versions:
    * `0.11.6`
    * `1.0.3`
    * `1.1.5`
    * `1.2.4`
    * `1.3.0`

### Consul Versions:
    * `1.6.2`
    * `1.5.3`
    * `1.4.5`
    * `1.3.1`
    * `1.2.4`

### Terraform Versions:
    * `0.11.10`
    * `0.11.11`
    * `0.11.12`
    * `0.11.13`
    * `0.11.14`
    * `0.12.10`
    * `0.12.11`
    * `0.12.13`
    * `0.12.14`
    * `0.12.15`
    * `0.12.16`

### Kubectl Versions:
    * `1.8.0`
    * `1.9.0`
    * `1.10.0`
    * `1.11.0`
    * `1.12.0`
    * `1.13.0`
    * `1.14.0`
    * `1.15.0`
    * `1.16.0`

## Image Versions - also check out git tagged versions
* `0.1.1` - Added `apt_packages`.  `jq`, `mysql-client`, `postgressql-client`
* `0.1.0` - Inital version

## Changelog
#### 0.1.1 (2019-12-02)
- Added `apt_packages` install task and the following packages
    * `jq`
    * `zip`
    * `unzip`
    * `curl` 
    * `wget` 
    * `default-mysql-client`
    * `postgresql-client`

#### 0.1.0 (2019-11-25)
- Initial version