Feature: Sign Out
    As a user
    in order to sign out of the application
    I need to be able to press the sign-out button and be signed out 4 sure

    Background:
        Given following users exist
            |name       |email          |password|
            |berg       |berg@gmail.com |12345678|
        And I am logged in as "berg"
		And I visit the landing page

    Scenario: Be able to log out [Happy Path]
        When I click on "Logout"
        Then I should be on landing page
        And I should see "Craft Academy Mailboxer"
        And I should see "Login"