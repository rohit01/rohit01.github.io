#!/usr/bin/env bash
#
# Build and deploy jeky site..
#

echo "git checkout dev"
git checkout dev

echo "Building site..."
rm -rf _site/
jekyll build

echo "Backup .gitmodules & .gitignore"
cp .gitmodules .gitmodules.backup
cp .gitignore .gitignore.backup

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
mv _site/* ./
rm -rf _site/
echo "Add photos"
rm -rf ./photos
mv ./.photos ./photos
echo "Add .gitmodules & .gitignore"
cp .gitmodules.backup .gitmodules
cp .gitignore.backup .gitignore
rm .gitmodules.backup .gitignore.backup

echo "git add website"
git add ./ ./photos ./.gitmodules

echo "Commit and push"
git commit -m "Release $(date +%b_%d_%G_%Hh%Mm%Ss)"
git push origin master

echo "git checkout dev"
git checkout dev

# Not required anymore..
# git rm --ignore-unmatch $(git ls-files --deleted) ./._.inva.lid_78.${RANDOM}.99

# Sample command to add submodules:
# git submodule add git@github.com:rohit01/photos-endurance-to-nandi-hills.git photos/album/endurance-to-nandi-hills

# Easy way pull latest of all submodules..
# git submodule update --recursive --remote
