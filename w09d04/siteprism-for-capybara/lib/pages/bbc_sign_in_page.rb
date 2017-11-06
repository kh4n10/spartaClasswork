class Pages::BBCSignInPage < SitePrism::Page

	set_url "https://account.bbc.com/signin/"

	element :email_field, "input[id='user-identifier-input']"
	element :password_field, "input[id='password-input']"
	element :sign_in_button, "button[id='submit-button']"
	element :notification_when_signed_in, "a[id='notification-link']"

	def enter_email_field
		email_field.set('r1702936@mvrht.net')
	end

	def enter_password_field
		password_field.set('Onionboy1')
	end

	def click_sign_in_button
		sign_in_button.click
	end


end