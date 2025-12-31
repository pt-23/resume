#!/bin/bash
# Local Jekyll development server script

export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"
echo "Starting Jekyll development server..."
echo "Site will be available at: http://localhost:4000"
echo "Press Ctrl+C to stop the server"
echo ""

bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload