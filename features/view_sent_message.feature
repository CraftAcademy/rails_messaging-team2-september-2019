Feature: View Sent Message
	As a user
	In order to to read my sent messages
	I need to be able to access the sent-folder where my sent messages are stored.

	Background: User has sent message
		Given following users exist
			| name    | email         | password |
			| Sverrir | hress@gaur.is | abcd1234 |
			| Faraz   | faraz@gaur.is | anything |
		And the following mail was sent
			| receiver    | sender  | subject           | body                | 
			| Faraz       | Sverrir | Important subject | Some important text |
		And I am logged in as "Sverrir"
		And I visit the landing page

	Scenario: User can see the sent message
		When I click on "Inbox"
		And I click on "Sent"
		Then I should see "Sverrir Subject"