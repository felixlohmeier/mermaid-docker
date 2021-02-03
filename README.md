# Docker container for mermaid

[mermaid](http://knsv.github.io/mermaid/) is an open source tool for generating diagram and flowchart from text in a similar manner as markdown. This docker image contains mermaid 7.0.0 and is build on top of the official node 8.8.1 image.

* [GitHub Repository with Dockerbuild files](https://github.com/felixlohmeier/mermaid-docker)
* [Docker Hub with docker images](https://hub.docker.com/r/felixlohmeier/mermaid)

## fixed versions

* [mermaid 7.0.0](https://yarn.pm/mermaid)
* [node 8.8.1](https://hub.docker.com/_/node/)
* [phantomjs 2.1.4](https://yarn.pm/phantomjs-prebuilt)

## usage

#### Docker command

> docker run --rm -v "$PWD":/data:z -u "$UID:$GID" felixlohmeier/mermaid myflowchart.mdd

#### Docker compose file

```
version: '3.7'

services:
  mermaid:
    user: "$UID:$GID"
    image: felixlohmeier/mermaid
    volumes:
      - ./:/data:z
    command: ["-s", "-p", "myflowchart.mdd"]
```

## typical workflow

1. Create your graph in [mermaid's live editor](https://mermaidjs.github.io/mermaid-live-editor/)
2. Copy & paste your graph config in a text editor and save it to a local file
3. Download a stylesheet from <https://unpkg.com/mermaid@7.0.13/dist/themes/> (and customize it if you want)
4. Run a docker container with this Docker image to create png and svg.

## Example

* render both formats (svg + png): `-s -p`
* width of the png: 600 pixel: `-w 600`
* apply custom stylesheet [mermaid.neutral.css](https://unpkg.com/mermaid@7.0.13/dist/themes/mermaid.neutral.css) from local file `-t mermaid.neutral.css`
* name of local file containing graph config: `myflowchart.mmd` 

> docker run --rm -v "$PWD":/data:z -u "$UID:$GID" felixlohmeier/mermaid -s -p -w 600 -t mermaid.neutral.css myflowchart.mmd
