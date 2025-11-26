FROM nikolaik/python-nodejs:python3.12-nodejs22-slim

LABEL version="1.0.0"
LABEL repository="https://github.com/oss-serverless/github-action"
LABEL homepage="https://github.com/oss-serverless/github-action"
LABEL maintainer="OSS Serverless Community"

LABEL "com.github.actions.name"="OSS Serverless"
LABEL "com.github.actions.description"="Wraps the OSS Serverless Framework (osls) to enable common Serverless commands."
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="orange"

RUN npm i -g osls@3.x
ENTRYPOINT ["serverless"]
