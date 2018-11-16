def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Man'
  fill_in 'player_2', with: 'Food'
  click_button('Submit')
end