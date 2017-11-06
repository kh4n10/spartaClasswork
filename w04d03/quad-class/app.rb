# Squares
require_relative 'quad.rb'
require_relative 'square.rb'
require_relative 'rectangle.rb'

square = Square.new(5)

rectangle = Rectangle.new(5,10)
square.describe
square.describe_scale
rectangle.describe