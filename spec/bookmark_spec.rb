require 'bookmark'

describe '.all' do
  it 'returns a bookmarks list' do
    connection = PG.connect(dbname: 'test_database')

    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.test_url_1.co.uk')")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.test_url_2.co.uk')")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.test_url_3.co.uk')")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.test_url_4.co.uk')")
    
    bookmarks = Bookmark.all

    expect(bookmarks).to include "http://www.test_url_1.co.uk"
    expect(bookmarks).to include "http://www.test_url_2.co.uk"
    expect(bookmarks).to include "http://www.test_url_3.co.uk"
    expect(bookmarks).to include "http://www.test_url_4.co.uk"
  end
end
 