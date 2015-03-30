FROM ubuntu:latest
MAINTAINER George Lewis <schvin@schvin.net>

ENV REFRESHED_AT 2015-03-30

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y unzip libreadline5 libssl-dev ipmitool freeipmi

# File from https://bugs.launchpad.net/opencompute/+bug/1156667/+attachment/3683163/+files/Intel_driver_and_dcmitool.zip
RUN mkdir -p /s/pub/
ADD pub/Intel_driver_and_dcmitool.zip /s/pub/
WORKDIR /s/pub
RUN funzip -quanta Intel_driver_and_dcmitool.zip > dcmitool
RUN chmod +x dcmitool
RUN ln -s /usr/lib/x86_64-linux-gnu/libcrypto.so /usr/lib/x86_64-linux-gnu/libcrypto.so.6
