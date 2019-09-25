Feature: Sign Out
    As a user
    in order to sign out of the application
    I need to be able to press the sign-out button and be signed out 4 sure

Background:
    Given I visit the landing page
    And the following user exist
    |name       |email          |password|
    |berg       |berg@gmail.com |12345678|
    And I click "Login" button
    And I fill in "Email" with "berg@gmail.com"
    And I fill in "Password" with "12345678"
    And I click "Log in" button
    Then I should be on landing page
    Then I should see "Craft Academy Mailboxer"

    Scenario: Be able to log out [Happy Path]
        When I click "Logout" button
        Then I should be on landing page
        And I should see "Craft Academy Mailboxer"