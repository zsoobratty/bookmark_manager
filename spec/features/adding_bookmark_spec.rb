feature 'adding bookmarks' do
  scenario 'expect to be able to add bookmarks page and see them' do
    visit('/')
    click_button "Bookmarks"
    fill_in :add_bookmark, with: 'https://www.github.com'
    click_button "Submit"
    expect(page).to have_content('https://www.github.com')
  end
end