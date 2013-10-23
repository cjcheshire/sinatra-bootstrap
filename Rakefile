require 'rubygems'
require 'bundler'
require 'rake'
Bundler.setup

Dir["tasks/*.rake"].sort.each { |ext| load ext }

namespace :assets do
  task :precompile do
    sh "rake styles:compile:production"
  end
end