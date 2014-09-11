#!/bin/sh

export ASSUME_ALWAYS_YES=YES
pkg install rubygem-chef
gem install chef --no-ri --no-rdoc
