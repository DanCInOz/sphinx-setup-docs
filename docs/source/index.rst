Setting up Sphinx and VSCode on Windows.
========================================

This document describes how to get Sphinx-Doc running on a windows machine including the required software for editing, version control and building of the document package files.   It also goes into some detail on configuring this software and some basic conventions for RST documents editing.

We are going to describe two methods for building sphinx projects.  Firstly, the native way, where we will build the sources with python3 under a virtual environment.   Secondly, since building PDFs on Windows this way is difficult, we will also install Rancher-Desktop to build them using docker containers.
 
A good, quick overview of Sphinx and how to set it up natively (using the Native python instead of a docker package) can be found at the following youtube `playlist <https://www.youtube.com/playlist?list=PLE72UCmIe7T9HewaqCUhKqiMK3LxYStjy>`_.

.. toctree::
   :maxdepth: 3
   :caption: Contents:

   00-intro
   01-method-local
   02-install-vscode
   03-editing
   04-method-rancher
   05-repositories