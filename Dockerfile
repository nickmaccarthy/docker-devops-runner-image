FROM python:3.8-buster
RUN apt update 
RUN apt install python3-apt aptitude python-apt-common -y
RUN /usr/local/bin/pip3 install 'ansible==2.9.1' 
COPY . .
RUN ansible-playbook build.playbook.yml