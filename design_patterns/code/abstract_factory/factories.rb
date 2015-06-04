# Factory for Shape and Color
require './red'
require './green'
require './square'
require './rectangle'

class ShapeColorAbstractFactory
  def get_color(color)
    raise NotImplementedError, "You should implement this method"
  end

  def get_shape(shape)
    raise NotImplementedError, "You should implement this method"
  end
end

class ColorFactory < ShapeColorAbstractFactory
  def get_color(color)
    case color
    when 'RED' then Red.new
    when 'GREEN' then Green.new
    end
  end
end

class ShapeFactory < ShapeColorAbstractFactory
  def get_shape(shape)
    case shape
    when 'SQUARE' then Square.new
    when 'RECTANGLE' then Rectangle.new
    end
  end
end
