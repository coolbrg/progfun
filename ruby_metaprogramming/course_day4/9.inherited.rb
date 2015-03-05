# inherited : Callback invoked whenever a subclass
#             of the current class is created.
# Class's method

class Foo
  @@no_of_child = 0
  def self.inherited(subclass)
    @@no_of_child += 1
  end

  def self.children_count
    @@no_of_child
  end
end

class Bar < Foo
end

class Baz < Bar
end

puts Foo.children_count
