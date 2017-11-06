require 'capybara/dsl'

class Katalon
	include Capybara::DSL

	def initialize
		# @session = Capybara::Session.new(:selenium)
		@url_to_test = 'http://demoaut.katalon.com/'
	end

	def url_check
		current_url
	end

	def getting_to_website
		visit(@url_to_test)
	end

	def make_appointment
		find('#btn-make-appointment').click
	end

	def login_for_appointment
		find('#btn-login').click
	end

	def select_facility
		select 'Seoul CURA Healthcare Center', from: 'facility'
	end

	def hospital_admission
		find('#chk_hospotal_readmission').click
	end

	def healthcare_program_choice
		healthcare = ["none", "medicare", "medicaid"]
		choice = healthcare[rand(healthcare.count)]

		find("#radio_program_#{choice}").click
	end

	def selecting_a_date
		fill_in 'txt_visit_date', with: Date.today
	end
end
