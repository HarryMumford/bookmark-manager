require 'bookmark'

describe '.all and .create' do
  it 'returns a bookmarks list' do
    Bookmark.create('http://www.test_url_1.co.uk')
    
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.test_url_1.co.uk"
  end
end
 
