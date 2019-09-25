When("I visit the {string} page") do |string|
  visit root_path
end

When("I click the {string} link") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |string, string2|
  fill_in(string, :with => string2)
end

When("I click {string} button") do |string|
  click_button(string)
end

When("I select {string} in {string}") do |string, string2|
  select(string, :from => string2)
end

Then("I should see {string}") do |string|
  expect(page).to have_content string
end

Then("I should not see {string}") do |string|
  expect(page).to not_have_content string
end

Given("I am logged in as {string}") do |string|
  user = User.find_by(name: string)
  login_as(user, scope: :user)
end

Given("following users exists") do |table|
  expect(table).to be_present
end

Given("I am on the inbox page") do
  visit mailbox_inbox_path
end

Given("I send a mail to {string}") do |string|
  @receiver = User.find_by(name: string)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end
