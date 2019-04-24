require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @list = Bookmarks.all
    erb :all
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmarks.create(params[:add_title], params[:add_url])
    redirect '/bookmarks'
  end

  run! if $0 == __FILE__
end
