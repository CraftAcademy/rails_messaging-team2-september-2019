Feature: View trash

  As a user
  In order to see my deleted messages
  I need to be able to access the trash-folder.

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
    And I fill in "Subject" with "Important subject"
    And I fill in "conversation[body]" with "Some important text"
    And I click "Send Message"
    
  Scenario: Successfully viewing trash
    Given I am logged in as "Sverrir"
    And I click "Inbox"
    And I click "View"
    And I click "Move to trash"
    And I click "Trash"
    Then I should see "user2019"