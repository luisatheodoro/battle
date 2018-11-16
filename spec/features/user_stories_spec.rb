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

  scenario 'Attacking player will reduce 10 HP' do
    sign_in_and_play
    click_button("Attack")
    expect(page).to have_content('Food: 50 HP')
  end

end