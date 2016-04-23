get '/howls' do
  @howls = Howl.where(original_howl_id: nil).order(created_at: :DESC).limit(5)
  erb :"howls/index"
end

get '/howls/new' do
  @wolves = Wolf.all.order('name')
  @howl = Howl.new
  erb :"howls/new"
end

post '/howls' do
  @howl = Howl.new(params)
  @wolves = Wolf.all.order('name')
  if @howl.save
    redirect to("/howls")
  else
    erb :"howls/new"
  end
end

get '/howls/:id/replies' do
  @howl = Howl.find_by_id(params['id'])
  @replies = @howl.replies
  erb :"howls/replies"
end
