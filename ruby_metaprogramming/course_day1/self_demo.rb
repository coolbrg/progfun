class SelfDemo
  def foo(val)
    @value = val
    bar
  end

  def bar
    puts @value
  end
end

o = SelfDemo.new
o.foo('Hello, Ruby')
