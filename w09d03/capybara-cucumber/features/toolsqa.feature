Feature: I am able to fill in all form fields in the practice automation form correctly and the form behaves appropriately when submitted
# Line 1 and 3 are describes
	Scenario: I can fill in all form with expected data types

		Given I can access the toolsqa practice automation form
		When I fill in form fields with expected data types
		Then they appear on the page correctly