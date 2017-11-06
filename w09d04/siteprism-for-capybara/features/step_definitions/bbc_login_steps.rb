Given(/^I can access the BBC home page$/) do
	@bbc_site = BBCSite.new
	@bbc_site.bbc_home_page.load
	@bbc_site.bbc_home_page.displayed?
end

And(/^I am able to select sign in$/) do
	expect(@bbc_site.bbc_home_page).to have_sign_in_link
	@bbc_site.bbc_home_page.click_sign_in_link
end

When(/^I enter my login details$/) do
	@bbc_site.bbc_sign_in_page.enter_email_field
	@bbc_site.bbc_sign_in_page.enter_password_field
end

And(/^I click sign in$/) do
	@bbc_site.bbc_sign_in_page.click_sign_in_button
end

Then(/^I have been signed in$/) do
	@bbc_site.bbc_sign_in_page.wait_until_notification_when_signed_in_visible
end