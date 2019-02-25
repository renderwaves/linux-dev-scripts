#!/bin/sh
#pre_build_vm.sh

# PRE-INSTALATION OF LINUX BUILD MACHINES
# MAKE IT SIMPLE AND EASY FOR SETUP
# Use this script across all Ubuntu-based VMs

# Goals
# 1. setup linux base packages
# 2. download additional tools/sdk/sources
# 3. setup folder structure
# 4. extract all additional tools/sdk/sources to correspondence folder structure
# 5. setup .profile env
# Ready to work with

# FOR INTERNSHIP STUDENTS:
# -----------------------
# TODO: install_packages()
# 	Write func to install packages from array
#	Eg: 	Input Array linux-headers-$(uname -r) gcc g++ make scons ccache libgl1-mesa-dev libxrandr-dev libxinerama-dev libopenal1 libxrender-dev libxext-dev libc6-dev libx11-dev
#	    	Result: sudo apt-get install {$ARRAY}
install_packages() {
	echo "install_packages() called"
}

# TODO: create_folders()
#	Write function for generating folder structure
#	Eg: 	~/git
#		~/Toolchains
#		~/Toolchains/Android
#		~/Toolchains/Android/ndk
#		~/Toolchains/Android/sdk
#		~/Toolchains/Android/tool
#		~/Toolchains/Android/studio
create_folders() {
	echo "create_folders() called"
}

# TODO: get_extract_archive()
#	Write func to obtaining tar/zip archive and extracting it in specified folder
#	Eg: Zip android-studio-ide-182.5264788-linux.zip downloaded into ~/Downloads and extracted into ~/Toolchains/Android/studio
get_extract_archive() {
	echo "extract_archive() called"
}

# TODO: get_file_from_url()
#	Write func to tokenize url string and separate file + extension from url
#	Eg: Source: https://dl.google.com/dl/android/studio/ide-zips/3.3.1.0/android-studio-ide-182.5264788-linux.zip
#	    Result: android-studio-ide-182.5264788-linux.zip
get_string_file_from_url() {
	echo "get_string_file_from_url() called"
}

# TODO: check_existing_env()
#	Write func for checking environment variable in .profile 
#	Eg: Function will be looking into .profile and checking if some our predefined export variables already exists
check_existing_env() {
	echo "check_existing_env() called"
}

# TODO: write_env()
#	Write func for writing an envrionment variable into .profile
write_env() {
	ecbo "write_env(): called"
}

# TODO: todo()
todo() {
	echo "TODO"
}

# check for sudo privilegies
if !sudo true; then
	echo "You must have root privileges to run this script."
	exit 1
fi

# Execute script depending on arguments
read input
if ["$input" == "packages"]; then
	install_packages
fi

if ["$input" == "folders"]; then
	create_folders
fi

if ["$input" == " "]; then
	todo
fi
