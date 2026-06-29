cd /mnt/chromeos/removable/big/uni/mirror./pkg/Debian/
cp clang.tgz ~
cp clangd.tgz ~
cp gcc-and-gpp.tgz ~
cd ~
tar xfvz clang.tgz 
tar xfvz clangd.tgz 
tar xfvz gcc-and-gpp.tgz
rm *.tgz

cd clang
sudo dpkg -i *.deb
cd

cd clangd/
sudo dpkg -i *.deb
cd

cd gcc-and-gpp/
sudo dpkg -i *.deb
cd
