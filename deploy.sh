#!/usr/bin/env bash
#
# Build and deploy jeky site..
#

echo "git checkout dev"
git checkout dev

echo "Building site..."
jekyll build

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
mv ./.photos ./photos
cp -r _site/* ./
# Add submodules
git add ./photos
# Add site
git add ./

git rm --ignore-unmatch $(git ls-files --deleted) ./._.inva.lid_78.${RANDOM}.99

git commit -m "Release $(date +%b_%d_%G_%Hh%Mm%Ss)"
git push

echo "git checkout dev"
git checkout dev
