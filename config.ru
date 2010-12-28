require "rubygems"
require "bundler"
Bundler.require(:default)

require "rack/jekyll"
require "rhomobile/nav"

ENV["RACK_ENV"] = "development" unless ENV["RACK_ENV"]

use Rhomobile::Nav::Base, {
    :nav_host => "http://localhost:8080/#{ENV["RACK_ENV"]}",
    :subscribe => true
 }
run Rack::Jekyll.new