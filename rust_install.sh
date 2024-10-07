# install rustup(recommand)

echo "install rustup"

yay -S rustup

echo "test rustup"
rustup -V

echp "install stable rust"
rustup install stable

# set in ~/.bashrc
# export PATH=~/.cargo/bin:$PATH