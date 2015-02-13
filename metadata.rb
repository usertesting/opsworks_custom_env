name "opsworks_custom_env"
maintainer "Artsy"
description "Writes a config/application.yml file with custom ENV values to apps' deploy directories."
version "0.3"

recipe "opsworks_custom_env::write_config", "Write a config/application.yml file to app's deploy directory. Used by configure recipe, or can be used directly in custom situations."
