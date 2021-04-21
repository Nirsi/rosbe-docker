RosBE Docker
=================================
Dockerized RosBE (ReactOS Build Environment) Fully functional ReactOS Build Environment in a box based on Ubuntu 20.04 LTS. The container contains all the necessary tools to compile ReactOS from a source.

#### Instructions
- clone ReactOS repository ``git clone https://github.com/reactos/reactos.git``
- start the container ``./start-rosbe.sh``
- init rosbe environment by running ``rosbe`` which is alias to ``/usr/RosBE/RosBE.sh``
- cd into a reactos directory
- run ``./configure.sh`` to prepare build folder ``output-MinGW-i386`` and cd into it
- run ``ninja bootcd`` or ``ninja livecd``
