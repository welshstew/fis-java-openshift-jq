FROM registry.access.redhat.com/jboss-fuse-6/fis-java-openshift:latest

USER root

RUN yum -y install wget
RUN wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \ 
    rpm -Uvh epel-release-latest-7*.rpm && \
    rm epel-release-latest-7*.rpm
RUN yum -y install jq && \
    yum -y clean all

#jboss from FIS
USER 185

