require "selenium-webdriver"

class SeleniumQatoolsForm

	def initialize
		Selenium::WebDriver::Chrome.driver_path = '/usr/local/Cellar/chromedriver/2.31/bin/chromedriver'
		
		@driver = Selenium::WebDriver.for :chrome
		@practice_form_url = 'http://toolsqa.com/automation-practice-form/'
	end

	def access_practice_form
		@driver.get @practice_form_url
	end

	def add_name_to_firstname_field
		@driver.find_element(:name, 'firstname').send_keys('Boris')
	end

	def add_name_to_lastname_field
		@driver.find_element(:name, 'lastname').send_keys('Bruce')
	end

	def sex_value
		num = rand(2)
		@driver.find_element(:id, "sex-#{num}").click()
	end

	def input_date
		@driver.find_element(:id, 'datepicker').send_keys('25/10/17')
	end

	def select_profession
		num = rand(2)
		@driver.find_element(:id, "profession-#{num}").click()
	end

	def select_continent
		continents = @driver.find_element(:id, 'continents')
		# option = Selenium::WebDriver::Support::Select.new(continents)
		# option.select_by(:text, "Europe")
		options = continents.find_elements(:tag_name, 'option')
		ting = rand(7)
		options[ting].click()
	end


end

practice_form_page = SeleniumQatoolsForm.new

practice_form_page.access_practice_form

practice_form_page.add_name_to_firstname_field

practice_form_page.add_name_to_lastname_field

practice_form_page.input_date

practice_form_page.sex_value

practice_form_page.select_profession

practice_form_page.select_continent

sleep 5