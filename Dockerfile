FROM node:20-slim

LABEL "com.github.actions.name"="vue cli plugin s3 deploy action"
LABEL "com.github.actions.description"="A Github action for vue-cli-plugin-s3-deploy"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"
LABEL repository="https://github.com/cloudbit/vue-cli-plugin-s3-deploy-action"
LABEL maintainer="lpossamai"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
