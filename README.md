# Helm Delete All plugin

[![CodeFactor](https://www.codefactor.io/repository/github/tedmiston/helm-delete-all-plugin/badge)](https://www.codefactor.io/repository/github/tedmiston/helm-delete-all-plugin)

A Helm plugin to delete and purge all releases from Kubernetes in one simple command.

## Install

	helm plugin install https://github.com/astronomerio/helm-delete-all-plugin --version 0.0.3

If you'd like a fancier setup with aliases, see Advanced Setup below.

## Upgrade

	helm plugin update delete-all

## Usage

	helm delete-all

## Advanced Setup

I wanted to be able to alias `delete-all` with shortcuts like `del-all` and `dela`.

Helm doesn't currently support plugins aliases, so this is a hack of making extra plugins that just call the original plugin.  It also doesn't support installing multiple plugins from one repo remotely, so this setup must be done locally instead.

	git clone https://github.com/astronomerio/helm-delete-all-plugin.git
	git checkout v0.0.3
	make install-all

You can also uninstall with `make remove-all`.

## Development

	git clone https://github.com/astronomerio/helm-delete-all-plugin.git
	helm plugin install helm-delete-all-plugin
