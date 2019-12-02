require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Hello worlds!'
  end

  get '/bookmarks' do
    erb(:bookmarks)
  end

run! if app_file == $0

end
