FROM node:8.8.1

RUN yarn global add phantomjs-prebuilt@2.1.14 mermaid@7.0.0

WORKDIR /data

ENTRYPOINT ["mermaid"]
CMD ["--help"]
