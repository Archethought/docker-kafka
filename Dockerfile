FROM dockerfile/java:oracle-java7

MAINTAINER Peter Klipfel <peter@archethought.com>

RUN wget http://www.scala-lang.org/files/archive/scala-2.10.4.deb
RUN dpkg -i scala-2.10.4.deb
RUN rm -f scala-2.10.4.deb

WORKDIR /opt
RUN wget https://www.apache.org/dyn/closer.cgi?path=/kafka/0.8.2.0/kafka_2.10-0.8.2.0.tgz
RUN tar -zxf kafka_2.10-0.8.2.0.tgz


