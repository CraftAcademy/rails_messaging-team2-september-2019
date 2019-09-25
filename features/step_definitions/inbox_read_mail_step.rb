Given("following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Given("the following mail was sent to recipients Faraz") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am logged in as {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I visit the site") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click the {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
