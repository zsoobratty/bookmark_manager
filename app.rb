require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end
end
