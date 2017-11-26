require_rel 'pages'

module BudgetApp

	def main_page
		# $driver relates to the appium driver
		MainPage.new
	end

	def budget_page
		BudgetPage.new
	end

	def enter_budget_page
		EnterBudgetPage.new
	end

end