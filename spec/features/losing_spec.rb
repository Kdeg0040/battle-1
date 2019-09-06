feature 'lose' do
  scenario 'player with 0HP loses' do
    sign_in_and_play
    19.times { attack_helper }
    expect(page).to have_content('You lose')
  end
end
