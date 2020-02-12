require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/bookmarks' do
    p ENV['ENVIRONMENT']
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :bookmarks_new
  end

  post '/bookmarks/create' do
    Bookmark.create(params[:create_bookmark])
    redirect '/bookmarks'
  end
end
