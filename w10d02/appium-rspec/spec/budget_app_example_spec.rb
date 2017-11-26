require_relative './spec_helper'

describe "Testing the budget app" do
	before(:all) do
		@driver = Appium::Driver.new(opts, true)
		# Line 7 allows the appium methods to be used in the rspec code
		Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
		# line 9 an appium method that starts the driver
		@driver.start_driver
	end

	after(:all) do
		@driver.driver_quit
	end

	it "should open the budgetwatch app" do
		expect(find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?).to be true
	end

	it "should open the budgets once budgets has been clicked" do
		text('Budgets').click
		expect(find_elements(:id, 'protect.budgetwatch:id/dateRange')[0].displayed?).to be true
	end

	it "should be able to add a budget" do
		find_element(:id, 'protect.budgetwatch:id/action_add').click
		# .type and send_keys both work to fill in text fields
		find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').type('Boris')
		find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys('5000')
		find_element(:id, 'protect.budgetwatch:id/action_save').click
		expect(find_element(:id, 'protect.budgetwatch:id/budgetName').text).to eql('Boris')
	end

	it "should navigate back to the home screen" do
		first_button.click
		expect(find_elements(:id, 'protect.budgetwatch:id/action_settings')[0].displayed?).to be true
	end

	it "should open the transactions page when on the home screen" do
		text('Transactions').click
		expect(text('EXPENSES').displayed?).to be true
	end

	it "should be able to add a transaction" do
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/nameEdit').send_keys('Lambo')
    # expect(find_element(:id, 'protect.budgetwatch:id/budgetSpinner').value).to eql('Boris')
    find_element(:id, 'protect.budgetwatch:id/accountEdit').send_keys('Debit')
    find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys('200000')
    find_element(:id, 'protect.budgetwatch:id/noteEdit').send_keys("My husbando's lamborghini")
    find_element(:id, 'protect.budgetwatch:id/action_save').click
  end
end