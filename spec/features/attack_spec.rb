feature 'Attacking Players' do
  scenario 'Player 1 can attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Rory attacked Chris'
  end

  scenario 'be attacked by Player 2' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Back'
    click_link 'Attack'
    expect(page).to have_content 'Chris attacked Rory'
  end

  scenario 'Attacks reduce the HP count' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Back'
    expect(page).not_to have_content 'Chris: 60HP'
    expect(page).to have_content 'Chris: 50HP'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Back'
    click_link 'Attack'
    click_link 'Back'
    expect(page).not_to have_content 'Rory: 60HP'
    expect(page).to have_content 'Rory: 50HP'
  end
end
