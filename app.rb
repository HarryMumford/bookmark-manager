require 'sinatra/base'
require_relative "lib/bmark_list"

class BmarkManager < Sinatra::Base

  get '/' do
    'homepage'
  end

  get '/bookmarks' do
    @bmarks = BmarkList.all
    erb(:bookmarks)
  end

run! if app_file == $0
end
