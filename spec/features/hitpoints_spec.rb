feature 'Display hitpoints' do
  scenario 'Initial hit points'do
    visit("/")
    fill_in :player1, with: "Erin"
    fill_in :player2, with: "Adrien"
    click_button "Submit"
    visit ("/play")

    expect(page).to have_content "20"
  end
end
