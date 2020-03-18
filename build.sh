#!/bin/sh

# clean up previous builds
docker rm wikispeech-mockup
docker rmi wikispeech-mockup

# build docker
~/opt/blubber wikispeech-mockup.yaml production | docker build --tag wikispeech-mockup --file - .
