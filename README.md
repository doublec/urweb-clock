# Ur/Web Example

This is simple example of using Ur/Web and Marc Weber's process execution library. The Ur/Web application displays a web page that displays the server's time updated every second or so by executing 'date' on the server.

Requires:

* Ur/Web - http://www.impredicative.com/ur/
* uw-process - http://gitorious.org/some-urweb-utility-libraries/uw-process

To build:

    $ git clone git://github.com/doublec/urweb-clock
    $ cd urweb-clock
    $ git submodule init
    $ git submodule update
    $ make

It assumes Ur/Web is installed in /usr/local.

To run:

    $ ./clock.exe

This runs a webserver on port 8080. accessing http://localhost:8080/main in a web browser will show the page.

