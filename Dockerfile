FROM java:7u91-jdk-alpine
MAINTAINER Sun Yan

RUN apk update

RUN apk -U add git 

RUN mkdir /home/git; \
    cd /home/git; \
    git clone https://github.com/forestwater/TestDockAutoBuild.git -b master
