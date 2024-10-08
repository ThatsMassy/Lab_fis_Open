AARCH=$(sysctl machdep.cpu.brand_string)
if [[ $AARCH == *Apple* ]]
    then
        pip3 install pygame && python3 -m pip install cython && python3 -m pip install --no-binary :all: --no-use-pep517 numpy && brew install python-tk && brew install libjpeg && brew install wget && python3 -m pip install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python3 setup.py install && wget https://downloads.arduino.cc/arduino-ide/arduino-ide_2.3.2_macOS_ARM64.dmg && open arduino-ide_2.3.2_macOS_ARM64.dmg
    else
        pip3 install pygame && python3 -m pip install cython && python3 -m pip install --no-binary :all: --no-use-pep517 numpy && brew install python-tk && brew install libjpeg && brew install wget && python3 -m pip install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python3 setup.py install && wget https://downloads.arduino.cc/arduino-ide/arduino-ide_2.3.2_macOS_64bit.dmg && open arduino-ide_2.3.2_macOS_64bit.dmg
    fi
exit
