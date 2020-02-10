feature 'testing infrastructure' do
  scenario 'can run app and see root page' do
    visit('/')
    expect(page).to have_content('Hello, world')
  end
end