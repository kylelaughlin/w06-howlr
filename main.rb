require "sinatra"
require "sinatra/activerecord"
require "sinatra/reloader"
require "pry"

Dir[File.dirname(__FILE__) + "/app/*/*.rb"].each { |file| require file}

ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/week-six-howlr')

set :views, Proc.new {File.join(root, "app/views/")}
enable :method_override

get "/" do
  redirect to("/howls")
end

get "/pry" do
  binding.pry
  redirect to("/")
end
