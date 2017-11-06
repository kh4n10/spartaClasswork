


describe 'Incorrect user details produces valid error' do
	context 'Correct errors thrown when incorrect details are input' do
		it 'should produce an error when inputting an incorrect password to a valid account' do
			@bbc_site = BBCSite.new
			@bbc_site.bbc_homepage.visit_homepage
			@bbc_site.bbc_homepage.sign_in_link.click
			@bbc_site.bbc_sign_in_page.valid_email
			@bbc_site.bbc_sign_in_page.invalid_password
			@bbc_site.bbc_sign_in_page.click_submit

			expect(@bbc_site.bbc_sign_in_page.error_message).to be true
		end
	end
end