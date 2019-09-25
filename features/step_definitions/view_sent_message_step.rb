Given("following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end
Given("the following message was sent to Faraz") do |table|
    table.hashes.each do |mail|
        FactoryBot.create(:mail, mail)
    end
end

  Given("I am logged in as {string}") do |string|
    user = User.find_by(name: string)
    login_as(user, scope: :user)
  end
  Given("I am on the inbox page") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  When("I click the sent page") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end