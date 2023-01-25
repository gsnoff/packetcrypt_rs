#!/bin/bash
sudo install -d -o user -g user /packetcrypt
cd /packetcrypt
rsync -av /packetcrypt1/ .
