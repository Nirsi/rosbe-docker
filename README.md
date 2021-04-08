# rosbe-docker
Dockerized RosBE (ReactOS Build Environment)
I created this project because I wanted to test the latest news in ReactOS, but I didn't want to set up an environment every time.
Or if I want to set up rosbe on a remote server quickly, docker is the way.

#### Instructions
- clone ReactOS repository ``git clone https://github.com/reactos/reactos.git``
- start the container ``./start-rosbe.sh``
- init rosbe environment by ``/usr/RosBE/RosBE.sh``
- cd into reactos directory
- run ``./configure.sh`` to prepare build folder ``output-MinGW-i386`` and cd into it
- run ``ninja bootcd`` or ``ninja livecd``
