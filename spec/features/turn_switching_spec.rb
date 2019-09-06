feature 'players switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content("Current turn: James")
    end
  end

  scenario 'expect players to switch after attack' do
    sign_in_and_play
    click_button('attack')
    # click_button('attack')
    expect(page).to have_content('Current turn: Mike')
  end
end
