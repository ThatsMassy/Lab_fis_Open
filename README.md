# Lab_fis_Open
This repo contains a few scripts to install the base for an Open Pyisics Laboratory made with the help of an Arduino Leonardo Board

## Install guide (Arduino Leonardo)
You'll need to burn the sketch (sensmotleo.ino) into your Arduino Leonardo using Arduino IDE

## Install guide (Linux)
Just run as root the install.sh file, if you encounter any issues open an issue

sudo bash install.sh

Then after the script finishes installing you have to run Cleanup.sh

sudo bash Cleanup.sh

## Running inside docker
If you plan to run this script under a docker container you need to install docker-compose and, when prompted, type "y" to enable XORG connections

Then just run docker.compose up

## Running on ARM distros

The script will recognize if you're running on an ARM-Based GNU/Linux Distro, it will automatically download and install ARM specific packages instead of the x86 ones

## Running on macOS (Only ARM supported at the moment, still testing out things)

1) You will need brew installed (https://brew.sh)

2) Run chmod +r install_mac.sh

3) Run ./install_mac.sh

4) When prompted install the arduino ide

## Tested on (Debian Based)

Ubuntu 20.04 LTS

Ubuntu 21.04

Ubuntu 21.10

Ubuntu 22.04 LTS

Ubuntu 22.10

Lubuntu 20.04 LTS

Lubuntu 21.04

Lubuntu 21.10

Lubuntu 22.04 LTS

Lubuntu 22.10

Xubuntu 20.04 LTS

Xubuntu 21.04

Xubuntu 21.10

Xubuntu 22.04 LTS

Xubuntu 22.10

Kubuntu 20.04 LTS

Kubuntu 21.04

Kubuntu 21.10

Kubuntu 22.04 LTS

Kubuntu 22.10

Linux Mint 20.3

Linux Mint 21

Linux Mint 21.1

ZorinOS Core 16

ZorinOS Core 16.1

ZorinOS Core 16.2

Pop!_OS 20.04 LTS

Pop!_OS 21.04

Pop!_OS 21.10

Pop!_OS 22.04 LTS

Pop!_OS 22.10

## Tested on (Arch Based)

Arch Linux (Manual install)

Arch Linux (archinstall, kernel Zen)

Manjaro 21.2.5

Manjaro 21.2.6

Manjaro 22

EndeavourOS

Artix Linux (OpenRC)

Asahi Linux (Mac Studio M1 Max)

Asahi Linux (MacBook Air M1)

## Tested on (Fedora Based)

Fedora 33

Fedora 34

Fedora 35

Fedora 36

Fedora 37

## Tested on (openSUSE Based)

openSUSE Leap 15.4

## WIP

Ubuntu 18.04 LTS

macOS 12 Monterey

macOS 13 Ventura

ChromeOS

Raspbian OS

WSL (Ubuntu 20 LTS)

Asahi Linux (MacBook Pro M2 Pro)
