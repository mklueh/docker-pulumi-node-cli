FROM node:alpine3.10

ADD run-pulumi.sh .

RUN apk update & apk add --no-cache curl bash bash-doc bash-completion
RUN curl -fsSL https://get.pulumi.com/ | bash | export PATH=$PATH:$HOME/.pulumi/bin


