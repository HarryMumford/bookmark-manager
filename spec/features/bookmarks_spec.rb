feature "List of bookmarks" do
  scenario "User arrives to view their bookmarks" do
    visit '/bookmarks'
    expect(page).to have_content('website')
  end
end
