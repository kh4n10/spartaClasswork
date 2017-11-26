class BudgetPage

	@@date_range = 'protect.budgetwatch:id/dateRange'
	@@add_budget = 'protect.budgetwatch:id/action_add'
	@@budget_added_appeared = 'protect.budgetwatch:id/budgetName'

	def date_range
		$driver.find_element(:id, @@date_range)
	end

	def click_add_budget
		$driver.find_element(:id, @@add_budget).click
	end

	def budget_appeared
		$driver.find_element(:id, @@budget_added_appeared)
	end
end