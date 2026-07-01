. lib/var.sh

copy_mirror(){
	cd $pkg_dir

	cp build-essential.tgz ~
	cp cmake.tgz ~
	cp gdb.tgz ~
	cp vscode-dependency.tgz ~
}

extract_dependency(){
	cd ~
	tar xfvz build-essential.tgz
	tar xfvz cmake.tgz
	tar xfvz gdb.tgz
	tar xfvz vscode-dependency.tgz
}

install_deb(){
	sudo dpkg -i *.deb
}

install_dependency(){
	cd ~/build-essential
	install_deb

	cd ~/cmake
	install_deb

	cd ~/gdb
	install_deb

	cd ~/vscode-dependency
	install_deb
}

install_vscode(){
	cd $vscode_dir
	sudo dpkg -i code_*.deb
}

extension(){
	cp $vscode_dir/Extension/vscode-cpptools.tgz ~
	cd ~
	tar xfvz vscode-cpptools.tgz 
}

cleanup(){
	rm -r ~/{build-essential,cmake,gdb,vscode-dependency,vscode-cpptools}.tgz
	rm -r ~/{build-essential,cmake,gdb,vscode-dependency}/
}

main(){
	if ! command -v gcc &> /dev/null;then
		copy_mirror
		extract_dependency
		install_dependency
	fi
	if ! command -v code &> /dev/null;then
		install_vscode
	fi
	extension
	cleanup
}

main
