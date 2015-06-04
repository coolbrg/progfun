require './color_shape_factory'
include ColorShapeFactory

# Shape
shape_factory = ColorShapeFactory.factory('SHAPE')
square_shape = shape_factory.get_shape('SQUARE')
square_shape.draw

rectangle_shape = shape_factory.get_shape('RECTANGLE')
rectangle_shape.draw

# Color
color_factory = ColorShapeFactory.factory('COLOR')
red_color = color_factory.get_color('RED')
red_color.fill

green_color = color_factory.get_color('GREEN')
green_color.fill
