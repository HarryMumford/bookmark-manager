feature "add bookmark" do
  scenario "user can add a bookmark that will be saved in the bookmark database" do
    visit "/bookmarks/new"
    fill_in "url", :with => "http://www.test_url_4.co.uk"
    click_button("Submit")

    expect(page).to have_content("http://www.test_url_4.co.uk")
  end
end