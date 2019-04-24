feature 'Add a new bookmark' do
  scenario 'it add an facebook page bookmark' do
    add_instag

    visit('/bookmarks/new')
    fill_in('add_url', with: 'www.facebook.com')
    fill_in('add_title', with: 'Facebook')
    click_button('Submit')

    expect(page).to have_content('INSTAG')
    expect(page).to have_content('Facebook')

  end
end
