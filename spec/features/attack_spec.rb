feature 'Attacking Players' do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Rory attacked Chris'
  end
end
