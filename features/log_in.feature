Feature: Log in
As a visitor,
in order to send messages,
I would like to log in to the mailboxer app.

Background:
    Given I visit the landing page
    And the following user exist
    |name       |email          |password|
    |berg       |berg@gmail.com |12345678|
    And i click "Login" button


    Scenario: Be able to log in [Happy Path]
        When I fill in "Email" with "berg@gmail.com"
        And I fill in "Password" with "12345678"
        And I click "Log in" button
        Then I should be on landing page
        Then I should see "Craft Academy Mailboxer"


    Scenario: Wrong username/account doesn't exist [Sad Path]
        When I fill in "Email" with "banana@gmail.com"
        And I fill in "Password" with "12345678"
        And I click "Log in" button
        Then I should see "Invalid Email or password"


    Scenario: Wrong Password [Sad Path]
        When I fill in "Email" with "berg@gmail.com"
        And I fill in "Password" with "12345679"
        And I click "Log in" button
        Then I should see "Invalid Email or password"

#KOLLA HÄR FARAAAAAAZ!!!!!
    Scenario: Wrong username/account doesn't exist [Sad Path]
        When I fill in "Email" with " "
        And I fill in "Password" with ""
        And I click "Log in" button
        Then I should be on landing page
        Then I should see "Craft Academy Mailboxer"
        