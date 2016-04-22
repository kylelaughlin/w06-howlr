#index
get '/wolves' do
  @wolves = Wolf.all
  erb :"wolves/index"
end

#new
get '/wolves/new' do
  @wolf = Wolf.new
  erb :"wolves/new"
end

#create
post '/wolves' do
  @wolf = Wolf.new(params)
  if @wolf.save
    redirect to("/wolves")
  else
    erb :"wolves/new"
  end
end
