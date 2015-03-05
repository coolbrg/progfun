# Callback invoked whenever the receiver is included
# in another module or class

module A
  def self.included(mod_or_class)
    puts "#{self} included in #{mod_or_class}"
    if mod_or_class.is_a? Class
      mod_or_class.class_eval do
        def hello
          'Hello, Ruby!!!'
        end
      end
    end
  end
end

module Foo
  include A
end

class Bar
  include A
end
puts Bar.new.hello
