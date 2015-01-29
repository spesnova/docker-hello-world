# app.rb
require "sinatra"

set :environment, :production

get "/" do
  "Hello World"
end
