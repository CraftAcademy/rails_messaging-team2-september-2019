Feature: Send message

  As a user,
  In order to send a message to my friend,
  I need to be able to compose a new message

  #Background:
  #  Given I visit the "landing" page
  #  And I click the "Inbox" link
  #  When I click "Compose" button

  Scenario: Successfully composing a message
    When I visit the "landing" page
    And I click the "Inbox" link
    And I click "Compose" button
    And I click "Faraz" in "Recipients"
    And I fill in "Subject" with "Important subject"
    And I fill in "Message" with "Some important text"
    And I click "Send Message" button
    Then I should see "Your message was successfully sent!"
    