Feature: Sign up
As a visitor,
In order to send messages,
I would like to be able to sign up to the mailboxer app.

Background:
Given I visit the landing page
When I click "Sign up" button
Then I should be on sign_up page

   Scenario: Be able to sign up
When I fill in "Name" with "Anna"
And I fill in "Email" with "anna@gmail.com"
And I fill in "Password" with "Password"
And I fill in "Password confirmation" with "Password"
And I click on "Create"
Then I should be on landing page
Then I should see "Welcome! You have signed up successfully."
