require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/all' do
    @book = Bookmarks.new.all
    erb :all
  end

  run! if $0 == __FILE__
end
