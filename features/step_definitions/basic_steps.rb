When("I visit the {string} page") do |string|
  visit root_path
end

When("I click the {string} link") do |string|
  click_link(string)
end

When("I fill in {string} with {string}") do |string, string2|
  fill_in(string, :with => string2)
end

When("I click {string}") do |string|
  click_on(string)
end

When("I select {string} in {string}") do |string, string2|
  select(string, :from => string2)
end

Then("I should see {string}") do |string|
  expect(page).to have_content string
end
Then("I should not see {string}") do |string|
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

Given("I am on the inbox page") do
  visit mailbox_inbox_path
end

Given("I send mail to {string}") do |name|
  @receiver = User.find_by(name:name )
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

When("I select {string} named {string}") do |recipient, name|
  select name, from: recipient
end

Given("I visit the site") do
  visit root_path
end


=begin
When("I visit the {string} page") do |string|
  visit root_path
end

When("I click the {string} link") do |string|
  click_link(string)
end
=end