feature "List of bookmarks" do
  scenario "User arrives to view their bookmarks" do
    visit '/bookmarks'
      expect(page).to have_content("http://www.test_url_1.co.uk")
      expect(page).to have_content("http://www.test_url_2.co.uk")
      expect(page).to have_content("http://www.test_url_3.co.uk")
      expect(page).to have_content("http://www.test_url_4.co.uk")
  end
end
