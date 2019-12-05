feature "/bookmarks" do
  scenario "User can view bookmarks on /bookmark route" do
    Bookmark.create('http://www.test_url_1.co.uk')
    Bookmark.create('http://www.test_url_2.co.uk')
    Bookmark.create('http://www.test_url_3.co.uk')

    visit '/bookmarks/list'

    expect(page).to have_content("http://www.test_url_1.co.uk")
    expect(page).to have_content("http://www.test_url_2.co.uk")
    expect(page).to have_content("http://www.test_url_3.co.uk")
  end
end

