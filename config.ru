require 'rubygems'
require 'sinatra'

set :enviroment, :development
set :run, false
set :raise_errors, true

run Sinatra::Application