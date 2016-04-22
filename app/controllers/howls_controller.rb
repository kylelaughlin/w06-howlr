get '/howls' do
  @howls = Howl.all.order('created_at').limit(5)
  erb :"howls/index"
end
