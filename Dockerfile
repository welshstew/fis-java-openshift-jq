FROM registry.access.redhat.com/jboss-fuse-6/fis-java-openshift:latest

USER root

# COPY ./configuration/oniguruma-5.9.5-3.el7.x86_64.rpm /tmp/oniguruma-5.9.5-3.el7.x86_64.rpm
# COPY ./configuration/jq-1.5-1.el7.x86_64.rpm /tmp/jq-1.5-1.el7.x86_64.rpm
RUN yum -y install wget
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && rpm -Uvh epel-release-latest-7*.rpm
RUN yum -y install jq && yum -y clean all


    # rpm -ivh /tmp/oniguruma-5.9.5-3.el7.x86_64.rpm && \
    # rpm -ivh /tmp/jq-1.5-1.el7.x86_64.rpm

#jboss from FIS
USER 185

