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

get '/howls/:id/replies/new' do
  @howl = Howl.find_by_id(params['id'])
  @wolves = Wolf.all.order('name')
  erb :"howls/new_reply"
end

post '/howls/:id/replies' do
  if params['image'].empty?
    image = nil
  else
    image = "params['image']"
  end
  @howl = Howl.new(content: params['content'],
                   image: image,
                   wolf_id: params['wolf_id'],
                   original_howl_id: params['id'])
  if @howl.save
    redirect to("/howls/#{params['id']}/replies")
  else
    @wolves = Wolf.all.order('name')
    erb :"howls/new_reply"
  end
end

get '/howls/test/:id' do
  @howl = Howl.find_by_id(params['id'])
  erb :"howls/test"
end

post '/howls/like' do
  @howl =Howl.find_by_id(params['howl_id'])
  @howl.up_likes
  @howl.save
  @howl.json_likes
end
