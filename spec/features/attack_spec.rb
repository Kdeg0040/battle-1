feature "attack" do

  scenario "player 1 attacks player 2" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content('James attacked Mike.')
  end

  scenario "player 2 HP decreases when attacked" do
    sign_in_and_play
    click_button('attack')
    expect(page).to have_content('Mike - hit points: 90')
  end
end
