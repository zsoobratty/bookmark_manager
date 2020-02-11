require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/bookmarks' do
    p ENV['ENVIRONMENT']
    @bookmarks = Bookmark.all
    erb :bookmarks
  end
end
