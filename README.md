NEST Lab letter templates
=========================

This repository contains the templates for NEST Lab-branded papers.

Latex Template
--------------

### Installation ###

#### Installing the necessary fonts ####

Follow the instructions at https://tug.org/fonts/getnonfreefonts/ or do the following:

    $ curl -O https://tug.org/fonts/getnonfreefonts/install-getnonfreefonts
    $ chmod 755 install-getnonfreefonts
    $ ./install-getnonfreefonts
    $ rm install-getnonfreefonts
    $ sudo getnonfreefonts --sys --all --refreshmap

#### Linux ####

    $ mkdir -p ~/.texmf/tex/latex/
    $ cd ~/.texmf/tex/latex/
    $ git clone https://github.com/NESTLab/nestpaper.git

#### MacOSX ####

    $ mkdir -p ~/Library/texmf/tex/latex/
    $ cd ~/Library/texmf/tex/latex/
    $ git clone https://github.com/NESTLab/nestpaper.git

### Usage ###

See `testpaper.tex` for an example of use.
