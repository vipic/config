xcode-select --install

. ./defaults_config.sh
. ./brew.sh
. ./defaults_dock.sh

# OhMyZsh
echo ">>> install OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
