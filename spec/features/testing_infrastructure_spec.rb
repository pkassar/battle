feature 'entering player names' do
  scenario 'Can add player names' do
    sign_in_and_play
    expect(page).to have_content 'Samy VS Will'
  end
end

feature 'checking another player\'s points' do
  scenario 'view player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content '100/100'
  end
end

feature 'enables player 1 to attack player 2' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack Will')
    expect(page).to have_content 'Will was attacked!'
  end
end

feature 'enables player 2 to attack player 1' do
  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    click_button('Attack Samy')
    expect(page).to have_content 'Samy was attacked!'
  end
end

feature "I want my attack to reduce Player 2's HP by 10" do
  scenario "player 1 takes 10 hp off player 2's total" do
    sign_in_and_play
    attack_will
    expect(page).to have_content '90/100'
  end
end

feature "I want to end the game when someone has 0 HP" do
  scenario "Will is at 10 HP and gets attacked a last time" do
    sign_in_and_play
    9.times {attack_will}
    click_button('Attack Will')
    expect(page).to have_content 'Will lost'
  end
end
