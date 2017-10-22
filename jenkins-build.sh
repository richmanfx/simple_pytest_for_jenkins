#!/bin/bash

echo '### Creating Virtual Environment ###'
VIRTUAL_ENV_DIR='/home/zoer/.virtualenvs'
VIRTUAL_ENV_NAME='jenkins_venv'
virtualenv $VIRTUAL_ENV_DIR/$VIRTUAL_ENV_NAME


echo '### Activate Virtual Environment ###'
source $VIRTUAL_ENV_DIR/$VIRTUAL_ENV_NAME/bin/activate


echo  '### Go to testing dir ###'
cd /home/zoer/jenkins/pytest/simple_pytest_for_jenkins


echo '### Install requirements ###'
pip install -r ./requirements.txt


echo '### Run tests ###'
./start_testing.sh


echo '### Deactivate Virtual Environment ###'
deactivate
