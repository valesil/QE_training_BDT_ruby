Feature: Google search main page
Validate the main functionality for Google.
* Search for a topic and verify that some results are displayed
* Verify that it is possible to search by voice
* Verify that the results are links

Scenario: Search for a topic and verify that some results are displayed
Given I open the Google search page
When I enter a searcheable word "Cucumber"
Then The results that match the searchable word are displayed

Scenario: Verify that it is possible to search by voice
Given I open the Google search page
	And searchable Voice Search feature is turned on
When I say the topic I want to search "Cucumber"
Then The results that match the searchable word are displayed

Scenario: Verify that the results are links
Given I open the Google search page
When I enter a searcheable word "Cucumber"
Then The results that match the searchable word are displayed
When I click the first result link
Then A new page is open