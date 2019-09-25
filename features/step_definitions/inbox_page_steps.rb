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



=begin
When("I visit the {string} page") do |string|
  visit root_path
end

When("I click the {string} link") do |string|
  click_link(string)
end
=end