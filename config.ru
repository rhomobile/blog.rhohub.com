require "rubygems"
require "bundler"
Bundler.require(:default)
require 'rack'
require "rack/jekyll"
require "rhomobile/nav"
require 'yaml'

ENV["RACK_ENV"] = "development" unless ENV["RACK_ENV"]

use Rhomobile::Nav::Base, {
    :nav_host => "#{YAML.load_file(File.join(File.dirname(__FILE__),'rho_config.yml'))[ENV['RACK_ENV']]['rhonav_host']}/#{ENV["RACK_ENV"]}",
    :subscribe => true
 }
use Rack::ContentLength
run Rack::Jekyll.new
