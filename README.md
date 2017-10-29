# Docker container for mermaid

[mermaid](http://knsv.github.io/mermaid/) is an open source tool for generating diagram and flowchart from text in a similar manner as markdown. This docker image contains mermaid 7.0.11 and is build on top of the official node 8.8.1 image. Installing the dependency phantomjs is tricky. I chose the solution from [jribar](https://hub.docker.com/r/jribar/node-phantomjs/~/dockerfile/).

* [GitHub Repository with Dockerbuild files](https://github.com/felixlohmeier/mermaid-docker)
* [Docker Hub with docker images](https://hub.docker.com/r/felixlohmeier/mermaid)

## fixed versions

* [mermaid 7.0.11](https://www.npmjs.com/package/mermaid)
* [node 8.8.1](https://hub.docker.com/_/node/)
* [phantomjs 2.1.1](https://bitbucket.org/ariya/phantomjs/downloads/)

## usage

> docker run --rm -v "$PWD":/data:z felixlohmeier/mermaid

## typical workflow

1. Create your graph in [mermaid's live editor](https://mermaidjs.github.io/mermaid-live-editor/)
2. Copy & paste your graph config in a text editor and save as myflowchart.mmd
3. Run docker to create png and/or svg. Example (render svg and png; width of the generated png: 600 pixel):

> docker run --rm -v "$PWD":/data:z mermaid -s -p -w 600 myflowchart.mmd
