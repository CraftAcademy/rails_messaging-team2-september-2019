Feature: Send message

  As a user,
  In order to send a message to my friend,
  I need to be able to compose a new message

  Background:
    Given following users exist
      |name   |email        |password|
      |Sverrir|hress@gaur.is|password|
      |Faraz  |faraz@gaur.is|password|
    And I am logged in as "Sverrir"
    And I visit the landing page

  Scenario: Successfully composing a message
    When I click on "Inbox"  
    And I click on "Compose"
    And I select "Recipient" named "Faraz"
    And I fill in "Subject" with "Important subject"
    And I fill in "conversation[body]" with "Some important text"
    And I click on "Send Message" 
    Then I should see "Your message was successfully sent!"
