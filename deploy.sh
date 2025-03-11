#!/usr/bin/env sh

# abort on errors
set -e

npm run build

cd dist

# if deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:kristtuu/kristtuu.github.io.git main:gh-pages

cd -