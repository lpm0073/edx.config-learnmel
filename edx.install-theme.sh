#!/bin/bash

rm -rf edx.config-70f
git clone https://github.com/70F/edx.config-70f.git
chown edxapp -R edx.config-70f
chgrp edxapp -R edx.config-70f
cp /home/ubuntu/edx.config-70f/conf/lms.env.json /edx/app/edxapp/lms.env.json
cp /home/ubuntu/edx.config-70f/conf/lms.auth.json /edx/app/edxapp/lms.auth.json
cp /home/ubuntu/edx.config-70f/conf/cms.env.json /edx/app/edxapp/cms.env.json
cp /home/ubuntu/edx.config-70f/conf/cms.auth.json /edx/app/edxapp/cms.auth.json
#cp /home/ubuntu/edx.config-70f/edx-platform/cms/envs/common.py /edx/app/edxapp/edx-platform/cms/envs/common.py
#cp /home/ubuntu/edx.config-70f/edx-platform/cms/envs/devstack.py /edx/app/edxapp/edx-platform/cms/envs/devstack.py
#cp /home/ubuntu/edx.config-70f/edx-platform/lms/envs/aws.py /edx/app/edxapp/edx-platform/lms/envs/aws.py
#cp /home/ubuntu/edx.config-70f/edx-platform/lms/envs/common.py /edx/app/edxapp/edx-platform/lms/envs/common.py
#cp /home/ubuntu/edx.config-70f/edx-platform/lms/envs/content.py /edx/app/edxapp/edx-platform/lms/envs/content.py
#cp /home/ubuntu/edx.edx.config-70f/edx-platform/lms/envs/devstack.py /edx/app/edxapp/edx-platform/lms/envs/devstack.py
chmod 644 /edx/app/edxapp/*.env.json
chmod 755 /edx/app/edxapp/*.auth.json
/edx/bin/supervisorctl restart edxapp:
/edx/bin/supervisorctl restart edxapp_worker:
