require 'rubygems'
require 'sinatra'
require 'sinatra/content_for' 
require 'sinatra/static_assets'
require 'sinatra/base'
require 'sinatra/json'
require 'slim'
require 'json'

class App < Sinatra::Base

  # Helpers
  helpers Sinatra::Helpers
  helpers Sinatra::ContentFor
  helpers Sinatra::JSON

  require './lib/render_partial'

  # Set Sinatra variables
  set :app_file, __FILE__
  set :root, File.dirname(__FILE__)
  set :views, 'views'
  set :public_folder, 'public'
  Slim::Engine.set_default_options :pretty => true
  

  configure do
    mime_type '.woff', "application/x-woff"
    mime_type '.ttf',  "application/x-font-ttf"
    mime_type '.eot',  "application/vnd.ms-fontobject"
  end
  
  # Application routes

  get '/styles' do
    slim :styles, :layout => :'layouts/application'
  end

  get '/' do
    slim :index, :layout => :'layouts/application'
  end

end