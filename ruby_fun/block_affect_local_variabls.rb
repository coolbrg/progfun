def test(&block)
	foo = eval 'foo', block.binding
	puts foo
	block.call
	foo = eval 'foo', block.binding
	puts foo
end

foo = 'before test'
test() {
	foo = 'after test'
	'ha ha, no foo for you'
}

def test(&block)
	eval "foo = 'go fish'", block.binding
	p block.binding
	block.call         # changing the block.binding
	bar = eval "foo", block.binding
	p block.binding
	puts bar
end
test(){
  foo = 'inside test block'
}

=begin
OUTPUT:
before test
after test
<Binding:0x0000000208b630>   # different bindings
<Binding:0x0000000208b3d8>
inside test block
=end

# Summary:
# We can't access local variables from a block, just the locals where the 
# block(binding) was defined and the return value of the block
