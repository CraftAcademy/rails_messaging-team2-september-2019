Given("I visit the landing page") do
    visit root_path
  end

  Given("the following user exist") do |table|
    table.hashes.each do |user|
        User.create!(user)
    end
  end

  When("I click {string} button") do |button|
    click_on(button)
  end
  
  When("I fill in {string} with {string}") do |field, string|
    fill_in field, with: string
  end
  
  Given("i click {string} button") do |button|
    click_on(button)
  end

  Then("I should be on landing page") do
    visit root_path
  end

  Then("I should see {string}") do |string|
    expect(page).to have_content string
  end