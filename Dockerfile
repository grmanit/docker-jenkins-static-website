FROM grmanit/jenkins-base

# the nodesource setup script already runs apt-get update
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash - &&\
    apt-get install -y ruby-full nodejs build-essential && rm -rf /var/lib/apt/lists/* &&\
    gem install bundler &&\
    npm install -g bower

RUN chmod -R 777 /var/lib/gems /usr/local
