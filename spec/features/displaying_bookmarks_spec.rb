feature "/bookmarks" do
  scenario "User can view bookmarks on /bookmark route" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.test_url_1.co.uk')")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.test_url_2.co.uk')")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.test_url_3.co.uk')")

    visit '/bookmarks/list'

    expect(page).to have_content("http://www.test_url_1.co.uk")
    expect(page).to have_content("http://www.test_url_2.co.uk")
    expect(page).to have_content("http://www.test_url_3.co.uk")
  end
end

