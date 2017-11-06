require 'capybara/dsl'

class BBCSignInPage
	include Capybara::DSL

		USERNAME_INPUT = 'user-identifier-input'
		PASSWORD_INPUT = 'password-input'

	def valid_email
		fill_in USERNAME_INPUT, with: 'chris.price2708@gmail.com'
	end

	def invalid_password
		fill_in PASSWORD_INPUT, with: 'password'
	end

	def click_submit
		find('#submit-button').click	
	end

	def error_message
		find('#form-message-password').visible?
	end

end