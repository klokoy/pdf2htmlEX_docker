#Dockerfile to build a pdf2htmlEx image

FROM ubuntu

#
#Install git and all dependencies
#
RUN sudo apt-get update && sudo apt-get install -qq git cmake autotools-dev libjpeg-dev libtiff4-dev libpng12-dev libgif-dev libxt-dev autoconf automake libtool bzip2 libxml2-dev libuninameslist-dev libspiro-dev python-dev libpango1.0-dev libcairo2-dev chrpath uuid-dev uthash-dev


#
#Clone the pdf2htmlEX fork of fontforge
#compile it
#
RUN git clone https://github.com/coolwanglu/fontforge.git fontforge.git
RUN cd fontforge.git && git checkout pdf2htmlEX && ./autogen.sh && ./configure && make V=1 && sudo make install

#
#Install poppler utils
#
RUN sudo apt-get install -qq libpoppler-glib-dev

#
#Clone and install the pdf2htmlEX git repo
#
RUN git clone git://github.com/coolwanglu/pdf2htmlEX.git
RUN cd pdf2htmlEX && cmake . && make && sudo make install

