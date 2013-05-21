require "bundler/gem_tasks"
require 'json'

def install_ngmin
  `rm -rf node_modules ; npm install ngmin browserify`
end

def generate_ngmin
  `./node_modules/.bin/browserify ./node_modules/ngmin/main.js | sed -e's/var annotate /window.annotate /' > vendor/ngmin.js`
end

def update_version
  package = JSON.parse(File.open('./node_modules/ngmin/package.json').read)
  write_version(package["version"])
end

def write_version(version)
  text = <<-FILE
module Ngmin
  module Rails
    VERSION = "#{version}"
  end
end
  FILE

  File.open('lib/ngmin/rails/version.rb', 'w') { |f| f.write text }
end

namespace :ngmin do
  desc "Build a new version of ngmin-browserified.js"
  task :build do
    install_ngmin && generate_ngmin && update_version
  end
end
