FROM grmanit/jenkins-base

RUN ln -sf /bin/bash /bin/sh

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - &&\
    # apt-get update &&\ # the nodesource setup script already runs apt-get update
    apt-get install -y ruby-full nodejs build-essential &&\
    gem install bundler &&\
    npm install -g bower
