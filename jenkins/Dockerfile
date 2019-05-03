FROM jenkins/jenkins:lts
USER root
COPY keys /root/.ssh/
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list 
RUN wget https://dl-ssl.google.com/linux/linux_signing_key.pub
RUN apt-key add linux_signing_key.pub
RUN apt-get update && apt-get install -y \
    python-dev \
    gcc \
    virtualenv \
    google-chrome-stable \
    make \
    ruby-dev
RUN gem install pact-provider-verifier
RUN gem install pact_broker-client
