prefix ?= /usr
.DEFAULT_GOAL := build

# TODO probably use `go tool` for this eventually
SWAG := $(shell command -v swag || echo 'go run github.com/swaggo/swag/cmd/swag@v1.16.4')

swag:
        $(SWAG) init --generalInfo api.go --output ./assets/ --outputTypes json

prebuild: npm-install swag
        node esbuild.config.js

install: chmod 755 drasl
        cp drasl "$(prefix)/bin/drasl"
        mkdir -p "$(prefix)/share/drasl/"
        cp -R assets view public locales "$(prefix)/share/drasl/"
