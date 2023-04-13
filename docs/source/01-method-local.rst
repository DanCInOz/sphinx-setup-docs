Method 1 - Build locally
========================

Install Git and Python
----------------------

Git is the software used to maintain version control for lots of projects.    Usually it is for source control for development products, it works equally well for maintaining configuration changes.   While it can be used for binary as well as text data, Git's power is shown through best when working with text based documents.   Commit changes and version differences can be seen very clearly in these cases.   We need it for VS Code to be able to save changes to the git repos.

We'll also install python.   We don't strictly need it since we are using python under docker to build the html and pdf package but it's nice to have python installed because VS Code and some of the extensions require python to run.

This part of the document describes the installation process for these two pieces of software on windows.

Download Git
------------

.. image:: images/14-Install-Git.png

#. Navigate to https://git-scm.com/download/win
#. Click on the 'Click here to download' link to get the latest version of git for windows.

Continue Installation
---------------------

Most options are default.

.. image:: images/15.png

Next

.. image:: images/16.png

Next

.. image:: images/17.png

Next

.. image:: images/18.png

Next

.. image:: images/19.png

Select Notepad for git's default editor.   (It is hardly used).

.. image:: images/20.png

Next

.. image:: images/21.png

Next

.. image:: images/22.png

Next

.. image:: images/23.png

Next

.. image:: images/24.png

Next

.. image:: images/25.png

Next

.. image:: images/26.png

Next

.. image:: images/27.png

Next

.. image:: images/28.png

Next

.. image:: images/29.png

Next

.. image:: images/30.png

Next

.. image:: images/31.png

*Wait* for installation to finish

.. image:: images/32.png

Click Finish

Setup Git user
--------------

.. image:: images/47-SetUpGit.png
    :scale: 70%

Type 'git' into the windows search bar and run Git CMD.

.. image:: images/48.png

Execute the commands:

.. code-block:: console

   git config --global user.email "<Email Address>"
   git config --global user.name "<Full Name>"

Download Github CLI 
-------------------

.. image:: images/49-GithubCLI.png

Github CLI are some CLI tools to help git authenticate seemlessly to GitHub.

#. Navigate to https://cli.github.com/ 
#. Click on "Download for Windows" to get the latest windows package.

Continue Installation
---------------------

Most options are default.

.. image:: images/50.png

Next

.. image:: images/51.png

Next

.. image:: images/52.png

Install (You will probably have to confirm changes)

.. image:: images/53.png

Finish

Download Python
---------------

.. image:: images/67-Install-Python.png

#. Navigate to https://python.org/download
#. Click on the 'Download Python XXX' link to get the latest version of python for windows.

.. image:: images/68.png

Make sure to select: "Add python.exe to PATH" and click "Customize installation".

.. image:: images/69.png

Make sue all 'Optional Features' are checked and click "Next".

.. image:: images/70.png

Make sure "Associate Files", "Create shortcuts" and "Add Python to environment variables" are all checked and click "Install".

.. image:: images/72.png

When the installation is complete, click Close.

