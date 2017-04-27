def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'Samy')
  fill_in('player_2', with: 'Will')
  click_button('Submit')
end
