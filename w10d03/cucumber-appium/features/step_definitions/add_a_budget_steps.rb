Given(/^I can open the app$/) do
	main_page.main_page_displayed?
end

When(/^click on budget$/) do
	main_page.click_budget_page
end

Then(/^the budget page opens$/) do
	expect(budget_page.date_range.displayed?).to be true
end

When(/^I enter a budget$/) do
	main_page.click_budget_page
	budget_page.click_add_budget
	enter_budget_page.enter_name_field
	enter_budget_page.enter_value_field
end

And(/^save the budget$/) do
	enter_budget_page.click_save_budget
end

Then(/^the budget can be seen on the budget page$/) do
	expect(budget_page.budget_appeared.displayed?).to be true
end