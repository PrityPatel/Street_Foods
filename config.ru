require "rubygems"
require "bundler"
Bundler.require

#Models
require './models/sfood'

# Controllers
require "./app"

use Rack::MethodOverride
run StreetFoodApp
