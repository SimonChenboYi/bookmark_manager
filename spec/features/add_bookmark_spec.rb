feature 'Add a new bookmark' do
  scenario 'it add an facebook page bookmark' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('www.instagram.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('www.youtube.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('www.google.com');")

    visit('/bookmarks/new')
    fill_in('add_bookmark', with: 'www.facebook.com')
    click_button('Submit')

    expect(page).to have_content('www.google.com')
    expect(page).to have_content('www.youtube.com')
    expect(page).to have_content('www.instagram.com')
    expect(page).to have_content('www.facebook.com')

  end
end
