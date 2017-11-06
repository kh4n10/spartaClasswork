class Pages::BBCHomepage < SitePrism::Page

	set_url "http://bbc.co.uk/"
	set_url_matcher /bbc.co.uk/

# line 7 is a method, setting sign_in_link as a variable and get the element and id
	element :sign_in_link, "a[id='idcta-link']"

	def click_sign_in_link
		sign_in_link.click
	end

end