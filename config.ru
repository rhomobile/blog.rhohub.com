require "rubygems"
require "bundler"
Bundler.require(:default)

require "rack/jekyll"

use Rhomobile::Nav::Base
run Rack::Jekyll.new