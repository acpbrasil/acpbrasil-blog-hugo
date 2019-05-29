#!/bin/sh

rm -rf public/

# hugo --i18n-warnings | grep i18n

#export HUGO_ENV=local     {{ if not (eq (getenv "HUGO_ENV") "local") }}

# hugo server -b http://localhost:1313/
# hugo server -b http://localhost:1313/ --gc
hugo server --gc
