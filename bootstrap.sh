#!/usr/bin/env bash

if [ ! -f /home/vagrant/.onetime ]; then
  # ONE-TIME ONLY
  touch /home/vagrant/.onetime

  echo "export PATH=\"\$HOME/swift/usr/bin:\$PATH\"" >> .bashrc

  sudo apt-get -y update

  echo "Downloading prebuilt linux Swift binaries"
  wget https://swift.org/builds/swift-3.0-preview-4/ubuntu1510/swift-3.0-PREVIEW-4/swift-3.0-PREVIEW-4-ubuntu15.10.tar.gz >/dev/null 2>&1

  tar xzf swift-3.0-PREVIEW-4-ubuntu15.10.tar.gz
  ln -s swift-3.0-PREVIEW-4-ubuntu15.10 swift
  mv swift-3.0-PREVIEW-4-ubuntu15.10.tar.gz downloads

  chown -R vagrant:vagrant /home/vagrant/*
fi
# end onetime check

