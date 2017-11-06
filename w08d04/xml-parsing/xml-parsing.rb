require 'nokogiri'

# The doc variable has an open xml file
doc = Nokogiri::XML(open('./menu.xml'))


# puts doc.search('price')

# doc.search('food').each do |food|
# 	puts food.element_children[0].content
# 	# .content is an xml node method
# 	# element_children[0], 0 is the position of the node in the array
# end

puts doc.xpath('//namex.')
# means look for anything inside food, its written as a regex method