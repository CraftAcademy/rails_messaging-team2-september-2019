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
      | Faraz       | Sverrir | Silly email       | Lorem ipsum... text |
    And I am logged in as "Faraz"
    And I visit the site

  Scenario: User can see that inbox counter is on
    When I click the "Inbox" button
    Then I should see "Sverrir Subject"
    And I should see "2" messages