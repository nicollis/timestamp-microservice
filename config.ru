require 'rubygems'
require 'sinatra'
require './timestamp'

set :enviroment, :development
set :run, false
set :raise_errors, true

run Sinatra::Application