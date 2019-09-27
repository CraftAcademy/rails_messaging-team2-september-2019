Feature: Delete a message

  As a user
  in order to keep my inbox clean
  I want to be able to delete my message

  Background:
    Given following users exists
         |name     |email         | password |
         |user2019 |user@mail.com | password |
         |Sverrir  |ss@mail.com   | password |
    And I am logged in as "user2019"
    And I visit the site
    And I click "Inbox"  
    And I click "Compose"
    And I select "Recipient" named "Sverrir"
    And I fill in "Subject" with "Delete this message"
    And I fill in "conversation[body]" with "This is a secret"
    And I click "Send Message"
    
  Scenario: Successfully viewing trash
    Given I am logged in as "Sverrir"
    And I click "Inbox"
    And I click "View"
    And I click "Move to trash"
    And I click "Trash"
    Then I should see "Subject: Delete this message"