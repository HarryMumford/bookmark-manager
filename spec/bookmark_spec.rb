require 'bookmark'

describe '.all and .create' do
  it 'returns a bookmarks list' do
    Bookmark.create('Test Website 1', 'http://www.test_url_1.co.uk')
    
    bookmarks = Bookmark.all

    expect(bookmarks).to include(Bookmark.new('Test Website 1', 'http://www.test_url_1.co.uk'))
  end
end
 
