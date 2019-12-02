require 'list'

describe List do
  it "Should list user's bookmarks" do
  #  subject.bookmarks = 'website'
    expect(subject.view).to eq('website')
  end
end
