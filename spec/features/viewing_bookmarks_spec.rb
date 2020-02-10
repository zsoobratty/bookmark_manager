feature 'viewing bookmarks' do
  scenario 'expect to be able to view bookmarks page' do
    visit('/')
    click_button 'Bookmarks'
    expect(page).to have_content('Bookmarks Page')
  end

  scenario 'expect to list bookmarks' do
    visit('/')
    click_button 'Bookmarks'
    expect(page).to have_content("http://www.destroyallsoftware.com")
  end
end