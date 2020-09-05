#!/usr/bin/env bash
# code_linters_install.sh
#


# Markdown
# 1. mdl
# Usage:
#   mdl foo.md
#   mdl -l
sudo gem install mdl

# 2. markdownlint
# Usage:
#   markdownlint foo.md  # check
#   markdownlint -f foo.md  # fix
npm install -g markdownlint-cli


# Dockerfile
# 1. hadolint
# https://github.com/hadolint/hadolint
# Usage:
#   hadolint yourDockerfile
brew install hadolint


# Go
# 1. goreportcard
# Usage: execute in Go project root dir
#   goreportcard-cli or goreportcard-cli -v
brew tap alecthomas/homebrew-tap
brew install gometalinter
go get github.com/gojp/goreportcard/cmd/goreportcard-cli

# 2. revive
# Usage:
#   revive ./...
go get -u -v github.com/mgechev/revive


