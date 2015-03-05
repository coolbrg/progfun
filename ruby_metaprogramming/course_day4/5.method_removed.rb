# method_removed: Invoked as a callback whenever an
# instance method is removed from the receiver.

module Chatty
  def self.method_removed(method_name)
    puts "Removing instance method '#{method_name}'."
  end
  def self.some_class_method() end
  def some_instance_method() end
  class << self
    remove_method :some_class_method
  end
  remove_method :some_instance_method
end
