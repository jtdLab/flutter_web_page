#!/usr/bin/env sh

# build
flutter build web --release --base-href /flutter_web_page/

# deploy
git add build/web -f

git commit -m 'deploy'

git subtree push --prefix build/web origin gh-pages

