#########################################################################
#
#                 -- Generated with omgcmd --
#      (do not edit unless you know what you're doing)
#
#########################################################################

ROOT_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
BIN_DIR := $(ROOT_DIR)/bin
SRC_DIR := $(ROOT_DIR)/src
OUT_DIR := $(ROOT_DIR)/dist

CORES ?= $(shell sysctl -n hw.ncpu || echo 4)
CONFIGURATION := Release

.DEFAULT_GOAL := list
.ONESHELL:

###############################################################################
#                                   Build                                     #
###############################################################################

build:
	bin/build --configuration $(CONFIGURATION)


###############################################################################
#                                 Utilities                                   #
###############################################################################

# https://stackoverflow.com/a/26339924/11547115
.PHONY: list
list:
	@$(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
