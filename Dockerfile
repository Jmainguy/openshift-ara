FROM centos:centos7
ENV maintainer="Jonathan Mainguy <jon@soh.re>"
ENV version=0.1
RUN yum install -y gcc python-devel libffi-devel openssl-devel redhat-rpm-config epel-release git
RUN yum install -y python2-pip python-PyMySQL
RUN pip install git+https://git.openstack.org/openstack/ara
RUN mkdir /opt/ara \
    && chgrp -R 0 /opt/ara \
    && chmod -R g+rwX /opt/ara
WORKDIR /opt/ara
ADD ansible.cfg /opt/ara/ansible.cfg
ADD run.sh /opt/ara/
EXPOSE 9191
CMD ["/opt/ara/run.sh"]
