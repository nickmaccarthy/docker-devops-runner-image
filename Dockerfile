FROM python:3.8-buster
RUN pip install 'ansible==2.9.1'
COPY . .
RUN ansible-playbook build.playbook.yml