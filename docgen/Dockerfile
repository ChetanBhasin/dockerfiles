FROM rust:1.35.0-slim

RUN apt-get update && apt-get install -y curl apt-transport-https ca-certificates && curl -sL https://deb.nodesource.com/setup_10.x |  bash - && apt-get install -y nodejs wget && \
  npm install -f -g fsevents redoc-cli && \
  echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && \
  curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add - && \
  apt-get install -y awscli && \
  apt-get update && apt-get install -y google-cloud-sdk && \
  cargo install mdbook && apt-get update && apt-get install -y awscli
