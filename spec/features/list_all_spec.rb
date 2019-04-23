feature 'Display a list of bookmark' do
  scenario 'it shows all bookmark' do
    visit('/all')
    expect(page).to have_content('www.google.com')
    expect(page).to have_content('www.youtube.com')
    expect(page).to have_content('www.instagram.com')
  end
end
