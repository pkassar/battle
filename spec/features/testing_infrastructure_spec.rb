feature 'entering player names' do
  scenario 'Can add player names' do
    sign_in_and_play
    expect(page).to have_content 'Samy VS Will'
  end
end

feature 'checking another player\'s points' do
  scenario 'view player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content '60/60 HP'
  end
end

feature 'enables players to attack each other' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Attacked!'
  end
end
