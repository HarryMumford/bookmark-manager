feature "deleting bookmark" do
  scenario "deleting bookmark" do
    Bookmark.create('Test Website 1', 'http://www.test_url_1.co.uk')
    Bookmark.create('Test Website 2', 'http://www.test_url_2.co.uk')

    visit('bookmarks/list')

    within(".Test_Website_1") { click_button "delete" }

    p Bookmark.all

    expect(page).not_to have_link('Test Website 1', href: "http://www.test_url_1.co.uk")
    expect(page).to have_link('Test Website 2', href: "http://www.test_url_2.co.uk")
  end
end
