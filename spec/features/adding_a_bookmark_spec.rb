feature "add bookmark" do
  scenario "user can add a bookmark that will be saved in the bookmark database" do
    visit "/bookmarks/new"
    fill_in "title", :with => "Test website 1"
    fill_in "url", :with => "http://www.test_url_1.co.uk"
    click_button("Submit")

    expect(page).to have_link('Test website 1', href: "http://www.test_url_1.co.uk")
  end
end
