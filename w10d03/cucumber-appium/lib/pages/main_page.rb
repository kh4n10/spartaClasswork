class MainPage

	@@budget_and_transaction = 'protect.budgetwatch:id/action_settings'
	@@budget_or_transaction = 'protect.budgetwatch:id/menu'

	def main_page_displayed?
		$driver.find_element(:id, @@budget_and_transaction)
	end

	def click_budget_page
		$driver.find_elements(:id, @@budget_or_transaction)[0].click
	end
end