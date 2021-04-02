# docker-asciidoctor-bytes
 Adds [bytefield-svg](https://github.com/asciidoctor/docker-asciidoctor) and [wavedrom](https://github.com/wavedrom/cli) to the the [Asciidoctor docker image](https://github.com/asciidoctor/docker-asciidoctor).

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