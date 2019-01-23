feature 'Display hitpoints' do
  scenario 'Initial hit points'do
    sign_in_and_play
    expect(page).to have_content "20"
  end
end
