get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/categories' do
  @display = Category.all

  erb :'categories/index'
end

get '/categories/show/:category' do
  @category = Category.find(params[:category]).name
  @articles = Category.find(params[:category]).articles

  erb :'categories/show'
end

get '/categories/new' do

  erb :'categories/new'
end

post '/categories/new' do
  Category.create(name: params[:message])
  "The Category #{params[:message]} was successfully created!"

end

get '/articles/new' do
  @display = Category.all

  erb :'articles/new'
end

post '/articles/new' do
  #edit using only params[:article]
  Article.create(
    title: params[:title],
    content: params[:content],
    image: params[:image],
    author: params[:author],
    price: params[:price],
    category_id: params[:category]
    )

  redirect to("../../categories/show/#{params[:category]}")
end

get '/articles/:article_id' do
  @article = Article.find(params[:article_id])

  erb :'articles/index'
end

get '/articles/:article_id/edit' do
  @display = Category.all
  @article = Article.find(params[:article_id])

  erb :'articles/edit'
end

put '/articles/edit' do
  Article.update(params[:id],
    title: params[:title],
    content: params[:content],
    image: params[:image],
    author: params[:author],
    price: params[:price],
    category_id: params[:category]
    )

  redirect to("../articles/#{params[:id]}")
end




