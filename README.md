RosBE Docker
=================================
Dockerized RosBE (ReactOS Build Environment) Fully functional ReactOS Build Environment in a box based on Ubuntu 20.04 LTS. The container contains all the necessary tools to compile ReactOS from a source. On any platform that can run docker container.

#### Instructions
- clone ReactOS repository ``git clone https://github.com/reactos/reactos.git``
- start the container ``docker run --rm -it --name rosbe -v ${PWD}:/root/workspace nirsiel/rosbe:latest``
    -   or a prepared start script located in the docker rosbe repository could be used. ``./start-rosbe.sh``
- init rosbe environment by running ``rosbe`` which is alias to ``/usr/RosBE/RosBE.sh``
- cd into a reactos directory if you are not there already.
- run ``./configure.sh`` to prepare build folder ``output-MinGW-i386`` and cd into it
- run ``ninja bootcd`` or ``ninja livecd``

#### Docker tags
**latest**
  - latest tag is used for production-ready images, which are tested on the latest stable release of ReactOS in such a way that the environment must be able to build the OS and create bootable iso images.
  
**dev**
  - The development build is used for testing changes and new configurations of the image. It usually works just fine, but it shouldn't be depended on for production use.
