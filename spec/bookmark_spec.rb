require 'bookmark'

describe Bookmark do
  describe '.all and .create' do
    it 'returns a bookmarks list' do
      Bookmark.create('Test Website 1', 'http://www.test_url_1.co.uk')
      
      bookmarks = Bookmark.all
  
      expect(bookmarks).to include(Bookmark.new('Test Website 1', 'http://www.test_url_1.co.uk'))
    end
  end
  
  describe '.delete' do
    it 'deletes the specific bookmark' do
      Bookmark.create('Test Website 1', 'http://www.test_url_1.co.uk')
      Bookmark.create('Test Website 2', 'http://www.test_url_2.co.uk')

      Bookmark.delete('Test Website 1', 'http://www.test_url_1.co.uk')
      expect(Bookmark.all).to include Bookmark.new('Test Website 2', 'http://www.test_url_2.co.uk')
      expect(Bookmark.all).not_to include Bookmark.new('Test Website 1', 'http://www.test_url_1.co.uk')
    end
  end
end


 
