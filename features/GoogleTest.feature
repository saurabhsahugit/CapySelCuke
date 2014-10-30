Feature: Google Tests

@test1
Scenario: Open Google search page

Given Google homepage is open

@test2
Scenario: Selenium Bing Search Test using Page objects, Driven by Cucumber

Given I Bing Search Homepage is open
When I search for something
Then I should see the search results page
