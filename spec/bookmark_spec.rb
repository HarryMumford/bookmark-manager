require 'bookmark'

describe '.all' do
  it 'returns a bookmarks list' do
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.test_url_1.co.uk"
    expect(bookmarks).to include "http://www.test_url_2.co.uk"
    expect(bookmarks).to include "http://www.test_url_3.co.uk"
    expect(bookmarks).to include "http://www.test_url_4.co.uk"
  end
end
