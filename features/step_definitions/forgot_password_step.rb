Given("I visit the landing page") do
    visit root_path
  end
  
  When("I click {string}") do |button|
    click_on(button)
  end
  
  When("I should see {string}") do |string|
    expect(page).to have_content string
  end
  
  When("I click {string} button") do |string|
    click_link(string)
  end

  When("I fill {string} with {string}") do |field, string|
    fill_in field, with: string
  end
  

  