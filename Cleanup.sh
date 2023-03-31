AARCH=$(hostnamectl | grep -i "architecture")
if [[ "$AARCH" == *x86-64* ]];
	then
		sudo rm -rf arduino-1.8.19-linux64.tar.xz && sudo rm -rf pyserial-3.4.tar.gz
		else
			sudo rm -rf arduino-1.8.19-linuxaarch64.tar.xz && sudo rm -rf pyserial-3.4.tar.gz
		fi
	exit
fi
