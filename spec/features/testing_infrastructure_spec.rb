feature 'Testing infrastructure' do
  scenario 'Can add player names' do
    visit('/')
    fill_in('player_1', with: 'Samy')
    fill_in('player_2', with: 'Will')
    click_button('Submit')
    expect(page).to have_content 'Samy VS Will'
  end
end
