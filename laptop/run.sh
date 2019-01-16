#!/bin/bash
yum install -y gcc python-devel libffi-devel openssl-devel redhat-rpm-config git
pip install git+https://git.openstack.org/openstack/ara
