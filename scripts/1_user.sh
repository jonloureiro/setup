#!/usr/bin/env sh

xdg-user-dirs-update



curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
mkdir -p $HOME/.local/bin
ln -s $HOME/.local/kitty.app/bin/kitty $HOME/.local/bin
ln -s $HOME/.local/kitty.app/bin/kitten $HOME/.local/bin



git clone https://github.com/qtile/qtile
cd qtile
git checkout v0.23.0
python3 -m venv venv
. venv/bin/activate
pip install xcffib==1.5 pywlroots==0.16.5 dbus-next==0.2.3
pip install --no-cache-dir cairocffi==1.6.1
pip install .
cd ..
cat > qtile.sh <<EOF
#!/usr/bin/env sh

. ./qtile/venv/bin/activate
python ./qtile/bin/qtile $*
EOF
chmod +x qtile.sh



git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
git checkout v0.6.0
make
cd ..
