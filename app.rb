require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

set :haml, :format => :html5 # default Haml format is :xhtml
set :sass, :style => :compact

get '/' do
	haml :index
end

get '/stylesheet.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :stylesheet
end