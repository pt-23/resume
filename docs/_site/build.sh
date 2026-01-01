#!/bin/bash
# Local Jekyll build script

export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"
echo "Building Jekyll site..."

bundle exec jekyll build

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Build successful!"
    echo "Site generated in _site/ directory"
else
    echo ""
    echo "❌ Build failed!"
    exit 1
fi