feature "attack other player" do
  scenario "player1 attack player2" do
    sign_in_and_play
    click_button "Attack!!"
    expect(page).to have_content "Erin attacked Adrien"
  end

end
