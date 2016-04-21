#index
get '/wolves' do
  @wolves = Wolf.all
  erb :"wolves/index"
end
