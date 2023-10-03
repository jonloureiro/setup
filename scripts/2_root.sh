#!/usr/bin/env sh

cd ly
make install installsystemd
systemctl enable ly.service
cd ..



ln -s $(pwd)/qtile.sh /usr/local/bin/qtile
mkdir /usr/share/xsessions
cat > /usr/share/xsessions/qtile.desktop <<EOF
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Exec=qtile start
Type=Application
Keywords=wm;tiling
EOF
