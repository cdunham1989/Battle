feature 'Hit points' do
  scenario 'Show the players hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Rory'
    fill_in :player_2_name, with: 'Chris'
    click_button ('Submit')
    expect(page).to have_content 'Chris: 60HP'
  end
end
