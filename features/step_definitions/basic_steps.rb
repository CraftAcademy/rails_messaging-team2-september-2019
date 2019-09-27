Given("I visit the landing page") do
  visit root_path
end

When("I fill in {string} with {string}") do |field, string|
  fill_in field, with: string
end

When("I click on {string}") do |element|
  click_on element
end

Given("following users exist") do |table|
  table.hashes.each do |user_hash|
    FactoryBot.create(:user, user_hash)
  end
end

Given("I am logged in as {string}") do |string|
  user = User.find_by(name: string)
  login_as(user, scope: :user)
end

When("I select {string} named {string}") do |recipient, name|
  select name, from: recipient
end