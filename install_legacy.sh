DISTRO=$(hostnamectl | grep -i "operating system")
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
     dnf -y update &&  dnf -y upgrade &&  dnf -y install python3-pygame python3-pip python3-qt5 python-tkinter tk python3-pillow-tk python3-pillow &&  pip3 install matplotlib &&  pip3 install pyqt5 && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 &&  python3 setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz && sudo tar -xvf arduino-1.8.19-linux64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh

  exit
fi
if [[ "$DISTRO" == *Ubuntu* ]];
  then
    apt -y install -y python-pygame python-matplotlib python-pip &&  pip install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz && sudo tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 && sudo python setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz &&  tar -xvf arduino-1.8.19-linux64.tar.xz && cd arduino-1.8.19 && sudo ./install.sh
  exit
fi

