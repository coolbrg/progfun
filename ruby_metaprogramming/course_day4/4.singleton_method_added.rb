# singleton_method_added: Invoked as a callback whenever
# a singleton method is added to the receiver.

# Use of singleton_method
module Chatty
  def self.singleton_method_added(method_name)
    puts "Adding singleton method (@@) '#{method_name}'"
  end
  def self.method_added(method_name)
    puts "Adding instance method (@) '#{method_name}'"
  end
  def self.one()     end
  def two()          end
  def self.three() end
end
