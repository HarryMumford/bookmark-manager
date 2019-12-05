feature "/bookmarks" do
  scenario "User can view bookmarks on /bookmark route" do
    Bookmark.create('Test Website 1', 'http://www.test_url_1.co.uk')
    Bookmark.create('Test Website 2', 'http://www.test_url_2.co.uk')
    Bookmark.create('Test Website 3', 'http://www.test_url_3.co.uk')

    visit '/bookmarks/list'

    expect(page).to have_link('Test Website 1', href: "http://www.test_url_1.co.uk")
    expect(page).to have_link('Test Website 2', href: "http://www.test_url_2.co.uk")
    expect(page).to have_link('Test Website 3', href: "http://www.test_url_3.co.uk")
  end
end

