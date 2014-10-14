pdf2htmlEX in a docker container
=================

Automated docker build for pdf2htmlEX

#How to use the container

If you have a file in ```local/path``` called ```test.pdf```that you want to convert. The following will run the container, mount you file location and convert the file.  The result will be in save in ```local/path```.

```bash
sudo docker run -v local/path:data pdf2htmlEX test.pdf
```
