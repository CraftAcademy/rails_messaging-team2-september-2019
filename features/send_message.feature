Feature: Send message

  As a user,
  In order to send a message to my friend,
  I need to be able to compose a new message

Background:
  Given following users exists
      | name    | email         | password |
      | Sverrir | hress@gaur.is | abcd1234 |
      | Faraz   | faraz@gaur.is | anything |

Scenario: Successfully composing a message
  Given I am logged in as "Sverrir"
  And I am on the inbox page
  And I send a mail to "Faraz"
  And I fill in "Subject" with "Important subject"
  And I fill in "Message" with "Some important text"
  And I click "Send Message" button
  Then I should see "Your message was successfully sent!"


#  Background:
#    When I visit the "landing" page
#    And I click the "Login" link
#    And I fill in "Email" with "hress@gaur.is"
#    And I fill in "Password" with "abcd1234"
#    And I click "Log in" button
#
#  Scenario: Successfully composing a message
#    When I visit the "landing" page
#    And I should see "Craft Academy Mailboxer"
#    And I visit the "mailbox#inbox" page
#    And I visit the "conversations/new" page
#    And I should see "Trash"
#    And I select "Faraz" in "conversation_recipients"
#    And I fill in "Subject" with "Important subject"
#    And I fill in "Message" with "Some important text"
#    And I click "Send Message" button
#    Then I should see "Your message was successfully sent!"
  