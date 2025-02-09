#!/bin/bash
# Run the "production" build without specifying a URL so the baseURL is used. On non-main branches,
# the CF_PAGES_URL variable is used. This is a workaround for not being able to have separate environment
# build scripts in CloudFlare Pages.

if [ "$CF_PAGES_BRANCH" == "main" ]; then
  hugo
else
  # Else run the dev script
  hugo -b $CF_PAGES_URL
fi
