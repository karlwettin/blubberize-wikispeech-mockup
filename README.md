## prepare.sh

* Clones (or pulls existing) repositories to `./src`

## build.sh

* Removes all but the Maven repository in ./src/gradle_cache/caches
* Creates the Docker image from Blubber YAML.

## run.sh

* Starts the Docker image on local Docker.

## Regading insecurity of Blubber

This is an insecure Blubber service. It might not have to be. 
Uncertain what's written to disk (logs etc), which is the reason for leaving it unsecure. 
