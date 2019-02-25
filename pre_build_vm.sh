#!/bin/sh

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

# TODO: create_folders()
#	Write function for generating folder structure
#	Eg: 	~/git
#		~/Toolchains
#		~/Toolchains/Android
#		~/Toolchains/Android/ndk
#		~/Toolchains/Android/sdk
#		~/Toolchains/Android/tool
#		~/Toolchains/Android/studio

# TODO: get_extract_archive()
#	Write func to obtaining tar/zip archive and extracting it in specified folder
#	Eg: Zip android-studio-ide-182.5264788-linux.zip downloaded into ~/Downloads and extracted into ~/Toolchains/Android/studio

# TODO: get_file_from_url()
#	Write func to tokenize url string and separate file + extension from url
#	Eg: Source: https://dl.google.com/dl/android/studio/ide-zips/3.3.1.0/android-studio-ide-182.5264788-linux.zip
#	    Result: android-studio-ide-182.5264788-linux.zip

# TODO: check_existing_env()
#	Write func for checking environment variable in .profile 
#	Eg: Function will be looking into .profile and checking if some our predefined export variables already exists

# TODO: write_env()
#	Write func for writing an envrionment variable into .profile

# Execute script depending on arguments
