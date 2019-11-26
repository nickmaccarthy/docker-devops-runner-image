# docker-devops-runner-image

This is just a quick an easy image I maintain for various projects I work with.  This is primarilly used as a gitlab runner image for CI/CD purposes in my various projects, but perhaps you can find other uses for it.  I am a big user of Kubernetes, Ansible, and Hashicorp products for personal projects, and this image represents a "toolbox" of most things I might need to support these projects. This image quite chubby in size... but hey, so am I *dealwithit.jpeg*


## Docker images from this available on dockerhub
* `nickmaccarthy/devops-runner:0.1.0` * First version.  Check git tags for info

## Usage

* Most of the installed items below will be available in your `$PATH` with their version appended in to the end like
`terraform-0.11.10`, `kubectl-1.13.0`, `vault-1.2.4` etc etc.  

* You can build this locally pretty easy with this command:
    * build it - `docker build -t devops-runner:<version> .`
    * run it -  `docker run --name devops-runner --rm -i -t devops-runner:<version> bash`

## Installed Items

### Source docker image
    * `python:3.8-buster`

### Python versions
    * `2.7.16` - aka `python2.7` and `pip2.7` in `$PATH`
    * `3.8.0`

### Default Ansible version: 
    * `2.9.1`

### ansible_versions:
    * `2.9.1`
    * `2.8.7`
    * `2.6.20`
    * `2.5.15`
    * `2.4.6`

### pip_items:
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
  
### vault_versions:
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

## Versions - also check out git tagged versions
* `0.1.0` - Inital version

## Changelog
#### 0.1.0 (2019-11-25)
    Initial version