feature 'Display a list of bookmark' do
  scenario 'it shows all bookmark' do
    add_google
    add_youtube
    add_instag

    visit('/bookmarks')

    expect(page).to have_content('Google')
    expect(page).to have_content('Youtube')
    expect(page).to have_content('INSTAG')
  end
end
