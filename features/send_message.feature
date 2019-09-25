Feature: Send message

  As a user,
  In order to send a message to my friend,
  I need to be able to compose a new message

  Background:
    When I visit the "landing" page
    And I click the "Login" link
    And I fill in "Email" with "Sverrir"
    And I fill in "Password" with "abcd1234"
    When I click "Log in" button

  Scenario: Successfully composing a message
    When I visit the "landing" page
    And I should see "Craft Academy Mailboxer"
    And I visit the "mailbox#inbox" page
    And I visit the "conversations/new" page
    And I should see "Recipients"
    And I select "Faraz" in "conversation_recipients"
    And I fill in "Subject" with "Important subject"
    And I fill in "Message" with "Some important text"
    And I click "Send Message" button
    Then I should see "Your message was successfully sent!"
  