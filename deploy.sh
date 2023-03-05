#!/usr/bin/env sh

# build
flutter build web

# deploy
git add build/web -f

git commit -m 'deploy'

git subtree push --prefix build/web origin gh-pages
