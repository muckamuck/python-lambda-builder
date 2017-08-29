# docker build -t python-lambda-builder .
FROM amazonlinux
RUN yum -y install epel-release
RUN yum -y install python-pip
RUN yum -y install git
RUN yum -y install which
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install -U pip
RUN pip install virtualenvwrapper
RUN ln -s /usr/local/bin/virtualenvwrapper.sh /etc/profile.d
RUN ln -s /etc/profile /root/.bashrc
RUN pip install awscli
