require "rubygems"
require "bundler"
Bundler.require

#Models

# Controllers
require "./app"

use Rack::MethodOverride
run StreetFoodsApp
