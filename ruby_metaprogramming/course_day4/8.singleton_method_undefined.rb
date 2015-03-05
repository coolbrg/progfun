# singleton_method_undefined : Invoked as a callback
# whenever a singleton method is undefined in the receiver.

module Chatty
  def self.singleton_method_undefined(method_name)
    puts "Undefining method @@ '#{method_name}'"
  end
  def self.one()   end
  class << self
     undef_method(:one)
  end
end
