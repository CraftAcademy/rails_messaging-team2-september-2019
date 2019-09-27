Feature: Sign up
	As a visitor,
	In order to send messages,
	I would like to be able to sign up to the mailboxer app.

	Background:
		Given following users exist
			|name       |email          |password|
			|berg       |berg@gmail.com |12345678|
		And I visit the landing page
		And I click on "Sign up"

	Scenario: Be able to sign up [Happy Path]
		When I fill in "Name" with "Anna"
		And I fill in "Email" with "anna@gmail.com"
		And I fill in "Password" with "Password"
		And I fill in "Password confirmation" with "Password"
		And I click on "Create"
		Then I should be on landing page
		And I should see "Hello, Anna"

	Scenario: User can't sign up if password is too short [Sad Path]
		When I fill in "Name" with "Anna"
		And I fill in "Email" with "anna@gmail.com"
		And I fill in "Password" with "Pass"
		And I fill in "Password confirmation" with "Pass"
		And I click on "Create"
		Then I should see "Password is too short (minimum is 8 characters)"

	Scenario: User does not fill in name [Sad Path]
		When I fill in "Email" with "anna@gmail.com"
		And I fill in "Password" with "Password"
		And I fill in "Password confirmation" with "Password"
		And I click on "Create"
		Then I should see "Name can't be blank"

	Scenario: User can't sign up with used Email and Name [Sad Path]
		And I fill in "Name" with "berg"
		And I fill in "Email" with "berg@gmail.com"
		And I fill in "Password" with "12345678"
		And I fill in "Password confirmation" with "12345678"
		And I click on "Create"
		Then I should see "Email has already been taken"