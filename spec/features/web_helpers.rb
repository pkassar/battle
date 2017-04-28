def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Samy')
  fill_in('player_2', with: 'Will')
  click_button('Submit')
end

def attack_will
  click_button('Attack Will')
  click_button('next turn')
end

def attack_samy
  click_button('Attack Samy')
  click_button('next turn')
end
