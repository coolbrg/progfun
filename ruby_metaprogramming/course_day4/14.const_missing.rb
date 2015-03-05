# Invoked when a reference is made to an undefined
# constant in mod. It is passed a symbol for the
# undefined constant, and returns a value to be used
# for that constant.

module Math
  def self.const_missing(name)
    name
  end
end
puts Math::PI
puts Math::BYE
