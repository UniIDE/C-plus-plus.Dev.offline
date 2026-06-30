arch=arm64

cd /mnt/chromeos/removable/big/uni/mirror./IDE/VSCode/$arch

sudo dpkg -i code_*.deb

cd /mnt/chromeos/removable/big/uni/mirror./pkg/Debian
cp build-essential.tgz ~
cp cmake.tgz ~

tar xfvz {build-essential, cmake}.tgz

cd cmake
sudo dpkg -i *.deb
cd ..

cd build-essential
sudo dpkg -i *.deb
cd ..
