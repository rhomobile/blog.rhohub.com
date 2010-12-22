require "rubygems"
require "bundler"
Bundler.require(:default)

require "rack/jekyll"

use Rhomobile::Nav::Base, {:nav_host => "http://rhohub.local"}
run Rack::Jekyll.new