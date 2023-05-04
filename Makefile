MAKEFLAGS += --silent

.PHONY: setup import synth deploy status test clean

all: setup import synth deploy status test
	echo "Doing all"

setup:
	which cdk || npm install -g cdk
	cdk list

synth: ## Create k8s manifest
	cdk synth
	
status:
	kubectl get svc,po -o wide

-include include.mk
