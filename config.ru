require "rubygems"
require "bundler"
Bundler.require(:default)
require 'rack'
require "rack/jekyll"
require 'yaml'

ENV["RACK_ENV"] = "development" unless ENV["RACK_ENV"]

use Rack::ContentLength
run Rack::Jekyll.new
