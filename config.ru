require 'rubygems'
require 'bundler'
Bundler.require

environment = ENV['RACK_ENV'] || 'development'
Mongoid.load!("config/mongoid.yml", environment)

# Models
require './models/artist'
require './models/home_address'
# require './models/manager'
# require './models/song'

# Controllers
require './app'
require './controllers/artists_controller'
require './controllers/managers_controller'
require './controllers/songs_controller'

run Tunr