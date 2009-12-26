# require 'rubygems'
# require 'sinatra'

require File.expand_path(File.join(File.dirname(__FILE__), 'vendor', 'gems', 'environment'))
Bundler.require_env

Sinatra::Application.set :views => File.join(File.dirname(__FILE__), 'views')
Sinatra::Application.set :run => false
Sinatra::Application.set :environment => ENV['RACK_ENV']
# Sinatra::Application.default_options.merge!(
#   :views => File.join(File.dirname(__FILE__), 'views'),
#   :run => false,
#   :environment => ENV['RACK_ENV']
# )

require 'main'
run Sinatra::Application
