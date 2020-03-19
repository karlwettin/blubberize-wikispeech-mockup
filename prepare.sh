#!/bin/bash

m_error() {
  echo $1
  exit 2
}

if [ ! -d "src" ]
then
  mkdir src
fi
cd src

if [ -d "wikispeech_mockup" ] ; then
  cd wikispeech_mockup
  if ! git pull; then
    m_error "Unable to pull from Wikispeech mockup git repo!"
  fi
else
  if ! git clone https://github.com/stts-se/wikispeech_mockup.git; then
    m_error "Unable to clone Wikispeech mockup git repo!"
  fi
  cd wikispeech_mockup
fi

mkdir wikispeech_server/tmp

# back to src
cd ..

# back to root
cd ..

echo "Success!"
