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

Given("I am logged in as {string}") do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

Given("I visit the site") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click the {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
