FROM docker-dev

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install locales && rm -rf /var/lib/apt/lists/*
RUN dpkg-reconfigure locales 
RUN localedef -c -f UTF-8 -i en_US en_US.UTF-8
# for low veersion Unix version
#RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
