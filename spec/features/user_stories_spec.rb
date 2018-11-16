feature 'user_stories' do
  scenario "checks if players names are present" do
    sign_in_and_play
    expect(page).to have_content('Man vs Food')
  end

  scenario "Player 1 can check Player 2 Hit Points" do
    sign_in_and_play
    expect(page).to have_content('Man vs Food')
    expect(page).to have_content('Food: 60 HP')
  end

  scenario "Attacking player 2 confirmation" do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content('Man attacked Food')
  end


  scenario 'Player 1 Attacking Player 2 will reduce 10 HP' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content('Food: 50 HP')
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button("Attack")
    expect(page).not_to have_content "Man's turn"
    expect(page).to have_content "Food's turn"
  end

  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Man's turn"
  end

end