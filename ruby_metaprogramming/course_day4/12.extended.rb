# Callback invoked whenever the receiver is extended
# in another module or class or target object

module A
  def self.extended(mod_or_class)
    mod_or_class.instance_eval do
      def foo
        'foo called in Callback'
      end
    end
  end
end

module Foo
  extend A
end

class Bar
end
obj = Bar.new
obj.extend A
puts "Object'f foo: #{obj.foo}"
puts "Foo.foo: #{Foo.foo}"
