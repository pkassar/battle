feature 'entering player names' do
  scenario 'Can add player names' do
    visit('/')
    fill_in('player_1', with: 'Samy')
    fill_in('player_2', with: 'Will')
    click_button('Submit')
    expect(page).to have_content 'Samy VS Will'
  end
end

feature 'checking another player\'s points' do
  scenario 'view player 2\'s hit points' do
    visit('/')
    fill_in('player_1', with: 'Samy')
    fill_in('player_2', with: 'Will')
    click_button('Submit')
    expect(page).to have_content '60/60 HP'
  end
end
