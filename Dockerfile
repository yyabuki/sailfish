FROM centos:5
MAINTAINER Yukimitsu Yabuki, yukimitsu.yabuki@gmail.com
RUN yum -y update \
    && yum -y install wget \
    && wget -O sailfish.tar.gz https://github.com/kingsfordgroup/sailfish/releases/download/v0.10.0/SailfishBeta-0.10.0_CentOS5.tar.gz \
    && tar xvfz sailfish.tar.gz \
    && yum clean all
WORKDIR /SailfishBeta-0.10.0_CentOS5/bin
ENTRYPOINT ["./sailfish"]
