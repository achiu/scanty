# require 'rubygems'
# require 'sinatra'

require File.expand_path(File.join(File.dirname(__FILE__), 'vendor', 'gems', 'environment'))
Bundler.require_env

Sinatra::Application.default_options.merge!(
  :views => File.join(File.dirname(__FILE__), 'views'),
  :run => false,
  :environment => ENV['RACK_ENV']
)

require 'main'
run Sinatra::Application
