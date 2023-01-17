DISTRO=$(hostnamectl | grep -i "operating system")
AARCH=$(hostnamectl | grep -i "archtecture")
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
#message "do you plan on running this in docker? (y/n)"
#if yes run xhost +local:*, else continue with script
echo "do you plan on running this in docker? not tested tho (y/n)"
read -r -p "Enter your choice: " response
if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
then
  xhost +local:root
fi

if [[ "$DISTRO" == *Fedora* ]];
  then
     if [[ $AARCH == *x86-64* ]]
     then
        dnf -y update &&  dnf -y upgrade &&  dnf -y install python3-pygame python3-pip python3-qt5 python-tkinter tk python3-pillow-tk python3-pillow &&  pip3 install matplotlib &&  pip3 install pyqt5 && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 &&  python3 setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz && sudo tar -xvf arduino-1.8.19-linux64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
        else
        dnf -y update &&  dnf -y upgrade &&  dnf -y install python3-pygame python3-pip python3-qt5 python-tkinter tk python3-pillow-tk python3-pillow &&  pip3 install matplotlib &&  pip3 install pyqt5 && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 &&  python3 setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linuxaarch64.tar.xz && sudo tar -xvf arduino-1.8.19-linuxaarch64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
     fi
  exit
fi
if [[ "$DISTRO" == *Ubuntu* ]];
  then
    echo "Are you running an ARM version of Linux? (y/n)"
    read -r -p "Enter your choice: " response
    if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
    then
      apt update && apt -y install -y python3-pygame python3-matplotlib python3-pip &&  pip3 install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python3 setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz &&  tar -xvf arduino-1.8.19-linux64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
      else
      apt update && apt -y install -y python3-pygame python3-matplotlib python3-pip &&  pip3 install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python3 setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linuxaarch64.tar.xz &&  tar -xvf arduino-1.8.19-linuxaarch64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
     fi
  exit
fi
if [[ "$DISTRO" == *Arch* ]];
  then
    if [[ $AARCH == *x86-64* ]]
    then
      sudo pacman -Syyu && sudo pacman -S tk wget python-pygame python-pip && sudo pip install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz && sudo tar -xvf arduino-1.8.19-linux64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
      else
      sudo pacman -Syyu && sudo pacman -S tk wget python-pygame python-pip && sudo pip install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linuxaarch64.tar.xz && sudo tar -xvf arduino-1.8.19-linuxaarch64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
    fi
  exit
fi
if [[ "$DISTRO" == *openSUSE* ]];
  then
    if [[ $AARCH == *x86-64* ]]
    then
      zypper ref && zypper up && zypper in python3-pygame python3-matplotlib python3-pip && sudo pip3 install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python3 setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz && sudo tar -xvf arduino-1.8.19-linux64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
      else
      zypper ref && zypper up && zypper in python3-pygame python3-matplotlib python3-pip && sudo pip3 install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python3 setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linuxaarch64.tar.xz && sudo tar -xvf arduino-1.8.19-linuxaarch64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
    fi
  exit
fi
