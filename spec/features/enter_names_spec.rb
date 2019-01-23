

feature 'Write players names' do
  scenario "Submit 2 players name and see a confirmation" do
    sign_in_and_play
    expect(page).to have_content "Erin fight Adrien"
  end


end
