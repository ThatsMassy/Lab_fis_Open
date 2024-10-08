# Lab_fis_Open
This repo contains a few scripts to install the base for an Open Physics Laboratory made with the help of an Arduino Leonardo Board or an Arduino UNO R4 Wi-Fi


## Install guide (Arduino Leonardo & Arduino UNO R4 Wi-Fi)
You'll need to burn the sketch (sensmotleo.ino) into your Arduino Leonardo or Arduino UNO R4 Wi-Fi using Arduino IDE

## Install guide (Linux)
Just run as root the install.sh file, if you encounter any issues open an issue

sudo bash install.sh

the script will ask if you are on a version of Ubuntu prior to 23, based on that the installer will pick the correct installation method (Ubuntu only)

Then after the script finishes installing you have to run Cleanup.sh

sudo bash Cleanup.sh

## Running inside docker
If you plan to run this script under a docker container you need to install docker-compose and, when prompted, type "y" to enable XORG connections

Then just run docker.compose up

## Running on ARM distros

The script will recognize if you're running on an ARM-Based GNU/Linux Distro, it will automatically download and install ARM specific packages instead of the x86 ones

## Running on macOS

BOTH ARCHITECTURES ARE SUPPORTED (Intel and Apple Silicon)

1) You will need brew installed (https://brew.sh)

2) Run chmod +r install_mac.sh

3) Run bash install_mac.sh

4) When prompted drag the Arduino IDE app to the Applications folder to install it

## Tested on (macOS)

macOS 12 Monterey

macOS 13 Ventura

macOS 14 Sonoma

## Tested on (Ubuntu Based)

Ubuntu 18.04 LTS

Ubuntu 20.04 LTS

Ubuntu 21.04

Ubuntu 21.10

Ubuntu 22.04 LTS

Ubuntu 22.10

Ubuntu 23.04

Ubuntu 23.10

Ubuntu 24.04 LTS

Lubuntu 18.04 LTS

Lubuntu 20.04 LTS

Lubuntu 21.04

Lubuntu 21.10

Lubuntu 22.04 LTS

Lubuntu 22.10

Lubuntu 23.04

Lubuntu 23.10

Lubuntu 24.04 LTS

Xubuntu 18.04 LTS

Xubuntu 20.04 LTS

Xubuntu 21.04

Xubuntu 21.10

Xubuntu 22.04 LTS

Xubuntu 22.10

Xubuntu 23.04

Xubuntu 23.10

Xubuntu 24.04 LTS

Kubuntu 18.04 LTS

Kubuntu 20.04 LTS

Kubuntu 21.04

Kubuntu 21.10

Kubuntu 22.04 LTS

Kubuntu 22.10

Kubuntu 23.04

Kubuntu 23.10

Kubuntu 24.04 LTS

Linux Mint 20.3

Linux Mint 21

Linux Mint 21.1

Linux Mint 21.2

Linux Mint 21.3

ZorinOS Core 16

ZorinOS Core 16.1

ZorinOS Core 16.2

ZorinOS Core 16.3

ZorinOS Core 17

Pop!_OS 18.04 LTS

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

Manjaro 22.0.5

Manjaro 23.0.4

Manjaro 23.1.3

EndeavourOS

Artix Linux (OpenRC)

Asahi Linux (Mac Studio M1 Max)

Asahi Linux (MacBook Air M1)

Asahi Linux (MacBook Air M2)

## Tested on (Fedora Based)

Fedora 33

Fedora 34

Fedora 35

Fedora 36

Fedora 37

Fedora 38

Fedora 39

## Tested on (openSUSE Based)

openSUSE Leap 15.4

openSUSE Leap 15.5

## WIP


ChromeOS

Raspbian OS

openSUSE Tumbleweed
