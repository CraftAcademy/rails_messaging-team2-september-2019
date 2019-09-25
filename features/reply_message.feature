Feature: Reply message

  As a user
  In order to reply to a message
  I need to be able to compose a new reply message

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
    And I fill in "Subject" with "Please reply"
    And I fill in "conversation[body]" with "Looking forward to your reply"
    And I click "Send Message"
    Given I am logged in as "Sverrir"
    And I click "Inbox"
    And I click "View"
    And I click "Reply"
    And I fill in "Reply Message" with "Happy now?"
    And I click "Reply"
  
  Scenario: Successfully viewing trash
    Given I am logged in as "user2019"
    And I click "Inbox"
    And I click "View"
    And I should see "Happy now?"