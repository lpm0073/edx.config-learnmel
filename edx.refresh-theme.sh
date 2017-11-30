#!/bin/bash

rm -rf edx.config-70f
ne https://github.com/70F/edx.config-70f.git
chown edxapp -R edx.config-70f
chgrp edxapp -R edx.config-70f
