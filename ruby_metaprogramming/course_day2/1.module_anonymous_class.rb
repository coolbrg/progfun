# Module :
# - When you include module:
  # - Ruby creates an anonymous class which wrapping the module
  # - Ruby then insert anonymous class into the ancestors chain
# Module demo for anonymous class

module Foo
  def foo_method
    puts 'foo method'
  end
end

class UseFoo
  include Foo
end

o = UseFoo.new
p o.methods.grep(/foo_/)
