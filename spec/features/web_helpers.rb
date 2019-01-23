def sign_in_and_play
 visit("/")
 fill_in :player1, with: "Erin"
 fill_in :player2, with: "Adrien"
 click_button "Submit"
 visit ("/play")
end
