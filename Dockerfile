FROM node:alpine

ARG BUILD_DATE
ARG VCS_REF

LABEL org.opencontainers.image.title="bdwyertech/json-server" \
      org.opencontainers.image.version=$VCS_REF \
      org.opencontainers.image.description="Simple container with typicode/json-server" \
      org.opencontainers.image.authors="Brian Dwyer <bdwyertech@github.com>" \
      org.opencontainers.image.url="https://hub.docker.com/r/bdwyertech/json-server" \
      org.opencontainers.image.source="https://github.com/bdwyertech/dkr-json-server.git" \
      org.opencontainers.image.revision=$VCS_REF \
      org.opencontainers.image.created=$BUILD_DATE \
      org.label-schema.name="bdwyertech/json-server" \
      org.label-schema.description="Simple container with typicode/json-server" \
      org.label-schema.url="https://hub.docker.com/r/bdwyertech/json-server" \
      org.label-schema.vcs-url="https://github.com/bdwyertech/dkr-json-server.git"\
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.build-date=$BUILD_DATE

RUN npm install -g json-server

WORKDIR /data
VOLUME /data

EXPOSE 3000

ENTRYPOINT ["/bin/sh", "-c"]
