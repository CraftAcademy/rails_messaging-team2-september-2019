Feature: Forgot Password
    As a user
    in order to access my account if I forgot my password
    I expect to be able to reset my password. 


Background:
    Given following user exists
        |name       |email              |password|
        |jarmo      |jarmo@gmail.com    |jarmo123|
    And I visit the landing page


Scenario: Enter email and see that instructions has been sent.
    When I click "Login"
    And I should see "Remember me"
    And I click "Forgot your password?"
    And I fill "Email" with "jarmo@gmail.com"
    And I click "Send me reset password instructions"
    Then I should see 
    
    

Scenario:  Email can't be blank [Sad Path]
    When I click "Login"
    And I should see "Remember me"
    And I click "Forgot your password?"
    And I should see "Forgot your password?"
    And I click "Send me reset password instructions"
    Then I should see "Email can't be blank"

Scenario: Email must be registered [Sad Path]
    When I click "Login"
    # And I should see "Remember me"
    And I click "Forgot your password?"
    And I should see "Forgot your password?"
    And I fill "Email" with "taken@gmail.com"
    And I click "Send me reset password instructions"
    Then I should see "Email not found"

#Happy path Enter email and see that instructions has been sent.