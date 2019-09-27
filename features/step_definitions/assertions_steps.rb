Then("I should see {string}") do |string|
    expect(page).to have_content string
end 

Then("I should be on landing page") do
    expect(current_path).to eq root_path
end