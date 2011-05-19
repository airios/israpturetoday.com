set :haml, :format => :html5 # default Haml format is :xhtml
set :sass, :style => :compact

class RaptureApp < Sinatra::Base
  get '/' do
  	haml :index
  end

  get '/stylesheet.css' do
    content_type 'text/css', :charset => 'utf-8'
    sass :stylesheet
  end
end