feature 'Hit points' do
  scenario 'Show the players hit points' do
    sign_in_and_play
    expect(page).to have_content 'Chris: 60HP'
  end
end
