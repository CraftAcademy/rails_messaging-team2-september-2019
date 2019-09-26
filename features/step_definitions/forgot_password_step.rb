Given("I visit the landing page") do
  visit root_path
end

When("I click/press {string}( button)") do |button|
  click_on button
end

When("I should see {string}") do |string|
  expect(page).to have_content string
end

When("I fill {string} with {string}") do |field, string|
  fill_in field, with: string
end

Given("following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

Then("an email should be sent") do
  expect(ActionMailer::Base.deliveries.count).to eq 1
end

Then("the email should include {string}") do |string|
  ActionMailer::Base.deliveries.first.body.raw_source.include? string
end