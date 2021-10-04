from ubuntu:latest

run apt update && apt upgrade -y
run apt install -y curl gpg

run echo 'deb http://download.opensuse.org/repositories/home:/PerryWerneck:/pw3270/xUbuntu_20.10/ /' | tee /etc/apt/sources.list.d/home:PerryWerneck:pw3270.list

run curl -fsSL https://download.opensuse.org/repositories/home:PerryWerneck:pw3270/xUbuntu_20.10/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/home_PerryWerneck_pw3270.gpg > /dev/null

run export DEBIAN_FRONTEND=noninteractive && apt install -y tzdata && ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata
  
run apt update && apt install -y libglib2.0-dev pw3270

cmd pw3270
