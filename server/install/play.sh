#!/usr/bin/env bash

JAVA_VERSION=7;
JAVA_RELEASE='JDK';

pkg="java-1.$JAVA_VERSION.0-openjdk";

if [ $JAVA_RELEASE = "JDK" ]; then 
	pkg="$pkg-devel"; 
else 
	pkg="$pkg-headless"; 
fi; 
 
yum install -y "$pkg"   && 
yum install -y "wget" && 
yum install -y "unzip" && 
yum clean all  && 
cd /usr && 
wget https://downloads.typesafe.com/play/1.2.7.2/play-1.2.7.2.zip && 
unzip play-1.2.7.2.zip && 
mv ./play-1.2.7.2 ./play