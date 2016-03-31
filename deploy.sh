#!/usr/bin/env bash
#
# Build and deploy jeky site..
#

echo "git checkout dev"
git checkout dev

echo "Building site..."
rm -rf _site/
jekyll build

echo "Backup .gitmodules"
cp .gitmodules .gitmodules.backup

echo "git checkout master"
git checkout master

echo "Committing files..."

echo "Save site and submodules"
mv ./_site ./._site
mv ./photos ./.photos

echo "Delete existing files"
rm -rf *
git rm -r *

echo "Add files"
mv ./._site ./_site
cp -r _site/* ./
echo "Add photos"
rm -rf ./photos
mv ./.photos ./photos
echo "Add .gitmodules"
cp .gitmodules.backup .gitmodules
rm .gitmodules.backup

echo "git add website"
git add ./ ./photos ./.gitmodules

echo "Commit and push"
git commit -m "Release $(date +%b_%d_%G_%Hh%Mm%Ss)"
git push

echo "git checkout dev"
git checkout dev

# Not required anymore..
# git rm --ignore-unmatch $(git ls-files --deleted) ./._.inva.lid_78.${RANDOM}.99
