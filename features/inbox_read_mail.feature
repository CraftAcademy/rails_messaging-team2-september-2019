Feature: Inbox read mail
  As a user
  in order to read mail
  I expect to view a thread of mail assorted by date.

  Background: User has sent message
  Given following user exists
    | name    | email         | password |
    | Sverrir | hress@gaur.is | abcd1234 |
    | Faraz   | faraz@gaur.is | anything |

  And the following mail was sent to recipients Faraz
    | receiver    | sender  | subject           | body                | 
    | Faraz       | Sverrir | Important subject | Some important text |

Scenario: User can see that imbox counter is one
  Given I am logged in as "Faraz"
  Given I visit the site
  And I click the "Inbox" button
  Then I should see "Sverrir Subject"
  And I should see "1"