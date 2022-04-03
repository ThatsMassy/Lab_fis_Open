FROM debian:latest 
WORKDIR /data
RUN apt -y update
RUN apt -y install -y wget python3-pygame python3-matplotlib python3-pip &&  pip3 install matplotlib && wget https://files.pythonhosted.org/packages/cc/74/11b04703ec416717b247d789103277269d567db575d2fd88f25d9767fe3d/pyserial-3.4.tar.gz &&  tar -xvf pyserial-3.4.tar.gz && cd pyserial-3.4 &&  python3 setup.py install && cd .. && wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz &&  tar -xvf arduino-1.8.19-linux64.tar.xz && cd arduino-1.8.19 &&  ./install.sh
COPY . /data
CMD python3 /data/grafmar1.py