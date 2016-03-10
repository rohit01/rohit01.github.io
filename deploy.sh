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
cp -r _site/* ./
git add ./photos/album/*
git add ./
git rm --ignore-unmatch $(git ls-files --deleted) ./._.inva.lid_78.${RANDOM}.99
git commit -m "Release $(date +%b_%d_%G_%Hh%Mm%Ss)"
git push

echo "git checkout dev"
git checkout dev
