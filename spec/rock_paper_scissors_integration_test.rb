
require("capybara/rspec")
require("lib/game_outcome.rb")

describe("returns an outcome", {:type => :feature}) do
  it("takes the user entry and returns an outcome") do
    visit("/")
    click_button("2 Players")
    click_button("rock")
    click_button("rock")
    expect(page).to have_content("Tie!")
  end
end
