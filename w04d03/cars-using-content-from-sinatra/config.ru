require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/json'
require_relative './controllers/cars-controller.rb'
require_relative './controllers/cars-api-controller.rb'

use CarsApiController
run CarsController