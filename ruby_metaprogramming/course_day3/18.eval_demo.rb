# eval: Evaluates the Ruby expression(s) in string.
#       If binding is given, which must be a Binding object,
#     	the evaluation is performed in its context.
#       If the optional filename and lineno parameters are
# 			present, they will be used when reporting syntax errors.

puts "1. ===============> Simple eval"
puts eval "10 * 5"





str = 'Hello world'
puts "2. ===============> Eval taking variable"
puts eval "str + ', how are you?'"



str = <<END
This is a "multi-line" string
wishing you a great #{Time.now.year + 1}
END
puts "3. ===============> Eval taking multi-line string"
puts eval "str"


class Foo
	attr_accessor :src, :data

	def initialize(src)
		@src = src
	end

	def get_binding
		binding
	end
end
foo = Foo.new("Ruby Metaprogramming Book")
puts "4. ===============> Eval with binding"
binding = foo.get_binding
eval "@data='Ruby Binding and eval concepts'", binding
puts "Foo's source : #{foo.src}"
puts "Foo's data   : #{foo.data}"

