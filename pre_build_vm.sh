# MAKE IT SIMPLE AND EASY FOR SETUP
# Use this script across all Ubuntu-based VMs

# Global VM prepare packages for development env
sudo apt-get install -y
linux-headers-$(uname -r) \
mc \
git \
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

# setup folder structure
cd ~
mkdir ~/git
mkdir ~/Toolchains

# write to profile env

# at the end do not forget to clone repositories
