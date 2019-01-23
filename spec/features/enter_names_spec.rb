

feature 'Write players names' do
  scenario "Submit 2 players name and see a confirmation" do
    visit("/")
    fill_in :player1, with: "Erin"
    fill_in :player2, with: "Adrien"
    click_button "Submit"
    expect(page).to have_content "Erin fight Adrien"
  end


end
