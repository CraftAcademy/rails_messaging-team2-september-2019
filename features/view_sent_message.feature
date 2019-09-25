Feature: View Sent Message
As a user
In order to to read my sent messages
I need to be able to access the sent-folder where my sent messages are stored.

Background: User has sent message
Given following user exists
      | name    | email         | password |
      | Sverrir | hress@gaur.is | abcd1234 |
      | Faraz   | faraz@gaur.is | anything |

Given the following message was sent to Faraz
| recipients| subject           | message             | 
| Faraz     | Important subject | Some important text |

Scenario: User can see the sent message
  Given I am logged in as "Sverrir"
  And I am on the inbox page
  When I click the sent page
  Then I should see "Sent messages"

