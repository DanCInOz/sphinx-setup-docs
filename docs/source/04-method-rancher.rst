Method 2 - Rancher
==================

As mentioned earlier, Rancher is the software the controls the docker engine on your desktop.   With this method we will run the sphinx pdf build scripts inside docker.

.. warning::

   This method is completely optional.   If you plan on putting your sources into a github repository then you can have github build the documentation for you, each time you push the sources to github.

   What this method does allow for is if you want to build completely separate from github or if you want to build your pdf relatively quickly (it takes a couple of minutes via github workflow)

If you do decide not to install rancher, then the only real downside is that you will not be able to build the PDF images locally on your machine.   If that's OK with you, go ahead and skip this entire section.

Download and install Rancher
----------------------------

.. image:: images/01-DownloadRancher.png

#. In your favorite web browser navigate to this `page <https://github.com/rancher-sandbox/rancher-desktop/releases>`_: ``https://github.com/rancher-sandbox/rancher-desktop/releases``
#. Click on the "Windows" link to download the latest windows version.

Continue install
----------------

.. image:: images/02.png

Click Next.

.. image:: images/03.png

Click Install.

.. image:: images/04.png

*Wait*

.. image:: images/05.png

Click Finish.

Don't restart - yet
-------------------

.. image:: images/06.png

Click No.

.. warning:: 
   Clicking no here allows you to choose the initial setup for rancher (namely chosing the docker engine and not enabling Kubernetes).  It does produce an **error** however it is fixed after a reboot.

Configure the engine
--------------------

.. image:: images/07.png


#. Disable (uncheck) Kibernetes.
#. Select "dockerd" as the container software.

Click Accept.

Close and restart
-----------------

.. image:: images/08.png

Click Close and restart.

.. note:: 
   After some time rancher will throw an error - this is because WLS2 and the docker image are not yet installed.   Reboot your PC.

Logging back in
---------------

.. image:: images/09.png

After restart, upon log in WSL2 is installed.

Wait for WSL2 deployment
------------------------

.. image:: images/10.png

Starting Rancher again shows WSL2 and the docker WSL image are being deployed.

When the messages in the bottom corner are gone, your rancher installation should be complete.

Pull required docker images
---------------------------

.. image:: images/11.png

You can verify that docker is up by opening a command prompt and typing ``docker ps``.   It should just return the header row (starting with 'CONTAINER ID').  This tells us that the docker CLI tool can talk to the docker server.

Install the sphinx images.   Firstly, the base image.

.. code-block:: console

   docker pull sphinxdoc/sphinx

Install progress
----------------

.. image:: images/12.png

Next install the the PDF version.  The PDF version of sphinx is over 2Gb, so the download may take some time.

.. code-block:: console

   docker pull sphinxdoc/sphinx-latexpdf

Verify images in Rancher desktop
--------------------------------

.. image:: images/13.png

Installed images are listed in Rancher.

In Rancher desktop you can click on the images tab to see installed images.


