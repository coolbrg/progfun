# Factory generator/producer class
require './factories'

module ColorShapeFactory
  def self.factory(choice)
    case choice
    when 'SHAPE' then ShapeFactory.new
    when 'COLOR' then ColorFactory.new
    end
  end
end
