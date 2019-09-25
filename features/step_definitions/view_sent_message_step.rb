Given("following user exists") do |table|
    table.hashes.each do |user|
        FactoryBot.create(:user, user)
    end
end
Given("the following mail was sent to recipients Faraz") do |table|
    table.hashes.each do |mail|
      sender = User.find_by(name: mail["sender"])
      receiver = User.find_by(name: mail["receiver"])
      sender.send_message(receiver, mail["body"], mail["subject"])
    end
end

  Given("I am logged in as {string}") do |string|
    user = User.find_by(name: string)
    login_as(user, scope: :user)
  end
  Given("I visit the site") do
    visit root_path
  end
  
  When("I click the {string} button") do |string|
    click_on(string)
  end
  
  Then("I should see {string}") do |content|
    expect(page).to have_content content
  end