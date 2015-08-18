pdf2htmlEX in a docker container
=================

Automated docker build for pdf2htmlEX

see: https://registry.hub.docker.com/u/klokoy/pdf2htmlex/

## How to use this docker container to convert pdf file to html
Suppose you have a PDF file ~/pdf/test.pdf, simply running

    docker run -ti -v ~/pdf:/pdf klokoy/pdf2htmlex
    root@ef12bd470e34:/# pdf2htmlex --zoom 1.3 pdf/test.pdf

would produce a single HTML file test.html in the current directory.

For detail instructions, please read the wiki

https://github.com/coolwanglu/pdf2htmlEX/wiki/Quick-Start
