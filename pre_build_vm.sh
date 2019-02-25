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

###############
# env variables
###############
DL_ANDROID_STUDIO="https://dl.google.com/dl/android/studio/ide-zips/3.3.1.0/android-studio-ide-182.5264788-linux.zip"
#R9 ONLY FOR NOW
DL_ANDROID_NDK="http://dl.google.com/android/ndk/android-ndk-r9d-linux-x86_64.tar.bz2"
DL_ANDROID_TOOLS=""
DL_EMSCRIPTEN=""

################################################
# Global VM prepare packages for development env
################################################
sudo apt-get install -y
linux-headers-$(uname -r) \
mc \
ssh \
gcc \
g++ \
make \
scons \
ccache\
libgl1-mesa-dev \
libxrandr-dev \
libxinerama-dev \
libopenal1 \
libxrender-dev \
libxext-dev \
libc6-dev \
libx11-dev

########################
# download packages
#########################
cd ~/Downloads
wget $DL_ANDROID_STUDIO
wget $DL_ANDROID_NDK
wget $DL_ANDROID_TOOLS
wget $DL_EMSCRIPTEN

########################
# setup folder structure
########################
cd ~
# GIT 
mkdir ~/git
mkdir ~/git/build

# TOOLCHAINS
mkdir ~/Toolchains
# ANDROID
mkdir ~/Toolchains/Android

mkdir ~/Toolchains/Android/studio
tar -x ~/Downloads/$DL_ANDROID_STUDIO ~/Toolchains/Android/studio

mkdir ~/Toolchains/Android/ndk
mkdir ~/Toolchains/Android/sdk
mkdir ~/Toolchains/Android/tools
# WEBGL
mkdir ~/Toolchains/webgl
# RASPBERRYPI
mkdir ~/TOolchains/raspberry

# write to profile env

# at the end do not forget to clone repositories
