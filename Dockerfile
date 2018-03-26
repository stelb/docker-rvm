FROM centos

RUN yum -y install gcc-c++ patch readline readline-devel zlib zlib-devel \
   libyaml-devel libffi-devel openssl-devel make \
   bzip2 autoconf automake libtool bison iconv-devel sqlite-devel
RUN yum -y install which

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import - && curl -L get.rvm.io | bash -s stable
