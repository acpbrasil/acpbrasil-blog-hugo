#!/bin/sh

rm -rf public/
#export HUGO_ENV=local     {{ if not (eq (getenv "HUGO_ENV") "local") }}
hugo server -b http://localhost:1313/
