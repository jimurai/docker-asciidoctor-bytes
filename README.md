# docker-asciidoctor-bytes
 Adds [bytefield-svg](https://bytefield-svg.deepsymmetry.org/) and [wavedrom](https://github.com/wavedrom/cli) to the official [Asciidoctor docker image](https://github.com/asciidoctor/docker-asciidoctor). The image is available on [Docker Hub](https://hub.docker.com/r/jimurai/docker-asciidoctor-bytes) although versions are manually pushed - I've not got around to CI/CD yet.

This has only been tested in Windows 10 Pro using WSL2 and Docker Desktop. If anything looks odd it is probably because I'm using PowerShell without knowning what I'm doing.

## Run
```
docker run -it -v "$(Get-Location):/documents:" jimurai/docker-asciidoctor-bytes
```

## Example
```
asciidoctor -r asciidoctor-diagram -D ./tmp ./tests/fixtures/sample-with-diagram.adoc
```

## Build
```
docker build -t jimurai/docker-asciidoctor-bytes:latest .
```
