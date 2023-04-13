Introduction
============

Sphinx is amazingly simple and a versatile documentation helper.   For technical documentation it really does shine, giving the user the ability to write concise documentation quickly, and export it in a few useful formats.  Coupled with the 'read-the-docs' theme, the resulting html code is very readable.

When it comes to exporting to PDF, this is much more easily achieved when running under a Unix OS, rather than windows.   All is not lost however, since Sphinx can also run under docker (which can be very much unix oriented).   So, in this document I will describe a few options on how to achive this.

At the end of this procedure you should be able to build great documentation and export it to html, pdf and other formats as well.   The 3 ways to do this we will explore are:

* Installing python and git and compiling html docs locally.
* Installing Rancher-Desktop to enable us to build the docs via docker images (html and pdf)
* Using github actions to build the html and pdf docs on github hosted runners, deploying to a github pages site.

At the bare minimum we need to install python and git locally as the integration with VSCode makes it easy to author and quickly compile the sources for review.

.. note::
   Rancher-Desktop is opensource software used to administer kubernetes and docker/containerd containers.   Unlike Docker-Desktop it can be used commercially for free.

Prerequisites and method
------------------------

* `Python <https:/python.org/>`_ - One of the most popular scripting languages around.
* `Sphinx <https://www.sphinx-doc.org/en/master/>`_ - running under python.
* `Visual Studio Code <https://code.visualstudio.com/>`_ - a great IDE for all sorts of things.  (Can also use atom or sublime or notepad - but VS Code is the bomb)
* `Git <https://git-scm.com/>`_ - for saving the sources - used by VSCode.
* A github account.
* `Rancher and Docker Engine <https://rancherdesktop.io/>`_ - For running the Sphinx software in a reliable way.
* `Windows Subsystem for Linux ver 2 <https://learn.microsoft.com/en-us/windows/wsl/about>`_ - Microsoft finally came to the party.   Needed for Rancher-Desktop.

Editing is best done in an IDE like VSCode.  It provides some formatting context and tips for writing RST documents.  It also integrates the building and saving the sources to a local or remote git repository.   It is possible to author in another IDE but this set of instructions will focus on VSCode.

To be able to compile the html and pdf files, you need to be able to run the sphinx application.    It's a python app so you can install python, create a virtual environment, and build things that way.   As mentioned above, I've found that for windows, the PDF part is a bit of a problem.  The easiest way to make it work is to run sphinx in a docker container.   We will describe both methods, since building the html images is quite quick under native python.   And we'll use Rancher-Desktop to build the PDF version under docker.

The docker engine, with docker desktop is popular.   However, the docker licensing requires payment for Docker Desktop in commercial environments, so as an alternative, these instructions are for using Rancher with the docker engine.  

.. note::
   With Rancher and Docker Engine installed, you can also experiment with the millions of available docker images available online.   You can run web servers, Java applications, database servers, MQ systems etc...  There really is a lot available and there's no concern that you contaminate your own desktop with software that you tested but didn't like.   Just delete the container and move on...  A good set of documentation for Docker can be found `here <https://docker-curriculum.com/>`_.

For now, though, let just get sphinx running...

.. warning::
   The docker engine runs in a virtual machine under Windows Services for Linux.   WSL2 requires admin privileges so these are needed.  It will be installed and configured as part of the rancher installation.
