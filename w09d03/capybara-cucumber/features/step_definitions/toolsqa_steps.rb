Given(/^I can access the toolsqa practice automation form$/) do
	visit('/automation-practice-form/')
end

When(/^I fill in form fields with expected data types$/) do
	fill_in 'firstname', with: 'Frank'
	fill_in 'lastname', with: 'Franklin'

	num = rand(2)
	find("#sex-#{num}").click

	nums = rand(7)
	find("#exp-#{nums}").click
	
	fill_in 'datepicker', with: '01/01/2018'
	find('#profession-0').click
	find('#tool-2').click
	select 'Europe', from: 'continents'
	select 'Wait Commands', from: 'selenium_commands'
	click_button 'submit'
end

Then(/^they appear on the page correctly$/) do
	expect()
end