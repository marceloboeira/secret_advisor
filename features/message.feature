Feature: Message
As a guest
I want to send a message
So that the receiver receives it

Scenario: Guest sends a message
When I go to the homepage
And I fill in the "To" field with "tobias@funke.com"
And I fill in the "Content" field with "This is my message to Dr. Tobias"
And I click on "Send"
Then I see the confirmation message
