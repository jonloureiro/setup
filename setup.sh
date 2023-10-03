#!/usr/bin/env sh

su -c ./scripts/0_root.sh

./scripts/1_user.sh

su -c ./scripts/2_root.sh
