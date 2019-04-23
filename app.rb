require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    "Bookmark Manager"
  end

  get '/bookmarks' do
    @book = Bookmarks.new.list
    erb :bookmarks
  end

  run! if $0 == __FILE__
end
