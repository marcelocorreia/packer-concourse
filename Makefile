include pipeline.mk

VERSION?=$(shell cat ../resource_version/version)

bake:
	packer build -var version=$(VERSION) -var-file=variables.json template.json

validate:
	packer validate -var version=$(VERSION) -var-file=variables.json template.json

requirements:
	rm -rf ./roles/*
	ansible-galaxy install -f -r requirements.yml
