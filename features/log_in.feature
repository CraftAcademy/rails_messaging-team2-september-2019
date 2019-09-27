Feature: Log in
	As a visitor,
	in order to send messages,
	I would like to log in to the mailboxer app.

	Background:
		Given following users exist
			|name       |email          |password|
			|berg       |berg@gmail.com |12345678|
    And I visit the landing page
    And I click on "Login"

	Scenario: Be able to log in [Happy Path]
		When I fill in "Email" with "berg@gmail.com"
		And I fill in "Password" with "12345678"
		And I click on "Log in"
		Then I should be on landing page
		And I should see "Craft Academy Mailboxer"

	Scenario: Wrong username/account doesn't exist [Sad Path]
		When I fill in "Email" with "banana@gmail.com"
		And I fill in "Password" with "12345678"
		And I click on "Log in"
		Then I should see "Invalid Email or password"

	Scenario: Wrong Password [Sad Path]
		When I fill in "Email" with "berg@gmail.com"
		And I fill in "Password" with "12345679"
		And I click on "Log in"
		Then I should see "Invalid Email or password"
		