require 'sinatra/base'
require_relative 'lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    'homepage'
  end

  get '/bookmarks/list' do
    @bookmarks = Bookmark.all
    erb(:'bookmarks/list')
  end

  get '/bookmarks/new' do
    erb(:'bookmarks/new')
  end

  post '/bookmarks/store' do
    Bookmark.create(params[:title], params[:url])
    redirect '/bookmarks/list'
  end

  post '/bookmarks/delete' do
    Bookmark.delete(params[:title], params[:url])
    redirect '/bookmarks/list'
  end

run! if app_file == $0
end
 
