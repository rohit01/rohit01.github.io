#!/usr/bin/env bash
#
# Build and deploy jeky site..
#

echo "git checkout dev"
git checkout dev

echo "Building site..."
rm -rf _site/
jekyll build

# Backup .gitmodules
cp .gitmodules .gitmodules.backup

echo "git checkout master"
git checkout master

echo "Committing files..."

# Save site and submodules
mv ./_site ./._site
mv ./photos ./.photos

# Delete existing files
git rm -r *
rm -rf *

# Add files
mv ./._site ./_site
rm -rf ./photos
mv ./.photos ./photos
cp -r _site/* ./
cp .gitmodules.backup .gitmodules
rm .gitmodules.backup

# Add website
git add ./ ./photos ./.gitmodules

# Commit and push
git commit -m "Release $(date +%b_%d_%G_%Hh%Mm%Ss)"
git push

# back to dev branch
echo "git checkout dev"
git checkout dev

# Not required anymore..
# git rm --ignore-unmatch $(git ls-files --deleted) ./._.inva.lid_78.${RANDOM}.99
