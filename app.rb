require 'sinatra/base'
require_relative "lib/bookmark"
require 'pg'

class BookmarkManager < Sinatra::Base

  get '/' do
    'homepage'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

run! if app_file == $0
end
