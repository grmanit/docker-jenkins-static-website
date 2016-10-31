FROM grmanit/jenkins-base

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - &&\
    apt-get update &&\
    apt-get install -y ruby-full nodejs npm build-essential &&\
    gem install bundler &&\
    npm install -g bower
