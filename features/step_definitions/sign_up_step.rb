Given("I visit the landing page") do
    visit root_path
  end
  
  When("I click {string} button") do |button|
    click_on(button)
  end
  
  
  When("I fill in {string} with {string}") do |field, string|
    fill_in field, with: string
  end

  When("I click on {string}") do |string|
   click_on(string)
  end
  
  Then("I should be on landing page") do
    visit root_path
  end

  Then("I should see {string}") do |string|
    expect(page).to have_content string
  end

  Given("following user exist") do |table|
    table.hashes.each do |hash|
      User.create!(hash)
    end
  end