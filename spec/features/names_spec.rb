feature 'Entering Players' do
  scenario 'Can enter the name of two players' do
    visit('/')
    fill_in :player_1_name, with: 'Rory'
    fill_in :player_2_name, with: 'Chris'
    click_button ('Submit')
    expect(page).to have_content 'Rory vs. Chris'
  end
end
