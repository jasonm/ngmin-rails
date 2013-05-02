require "bundler/gem_tasks"

desc "Build a new version of ngmin-browserified.js"
task :build do
  `rm -rf node_modules ; npm install ngmin browserify && ./node_modules/.bin/browserify ./node_modules/ngmin/main.js | sed -e's/var annotate/window.annotate/' > vendor/ngmin.js`
end
