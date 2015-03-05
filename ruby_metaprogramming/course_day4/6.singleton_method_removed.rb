# singleton_method_removed: Invoked as a callback whenever
# a singleton method is removed from the receiver.

module Chatty
  def self.singleton_method_removed(method_name)
    puts "Removing singleton method (@@) '#{method_name}'"
  end
  def self.one()     end
  def two()          end
  def self.three() end
  class << self
    remove_method :three
    remove_method :one
  end
end
