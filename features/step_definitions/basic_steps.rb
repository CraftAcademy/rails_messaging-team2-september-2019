When("I visit the {string} page") do |string|
  visit root_path
end

When("I fill in {string} with {string}") do |string, string2|
  fill_in(string, :with => string2)
end

When("I click {string}") do |string|
  click_on(string)
end

Then("I should see {string}") do |string|
  expect(page).to have_content string
end

Given("I am logged in as {string}") do |string|
  user= User.find_by(name:string)
  login_as(user,scope: :user)
end

Given("following users exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end

When("I select {string} named {string}") do |recipient, name|
  select name, from: recipient
end

Given("I visit the site") do
  visit root_path
end

Then("I should not see {string}") do |string|
  expect(page).to have_no_content string
end