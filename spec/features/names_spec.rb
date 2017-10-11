feature 'Entering Players' do
  scenario 'Can enter the name of two players' do
    sign_in_and_play
    expect(page).to have_content 'Rory vs. Chris'
  end
end
