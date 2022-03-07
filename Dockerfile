FROM gitpod/workspace-full

RUN curl -fsSL https://get.pulumi.com | shcurl -fsSL https://get.pulumi.com | sh

RUN curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | bash

RUN npm install -g @nestjs/cli expo-cli eas-cli

RUN wget https://github.com/digitalocean/doctl/releases/download/v1.66.0/doctl-1.66.0-linux-amd64.tar.gz && \
    tar xf ./doctl-1.66.0-linux-amd64.tar.gz && \
    sudo mv ./doctl /usr/local/bin/doctl && \
    rm doctl-1.66.0-linux-amd64.tar.gz

RUN brew install kubectl kustomize tilt-dev/tap/tilt tilt-dev/tap/ctlptl kind doctl