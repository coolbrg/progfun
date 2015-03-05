# Ruby 1.9 supports 4 ways to call a proc; p = ->n {[:hello, n]}
# 1. p[:ruby]
# 2. p.call(:ruby)
# 3. p.(:ruby)
# 4. p === some_argument

def am_i_awesome?
  awesome = Proc.new do |version|
    case version
    when /1.9.?/ then true
    when "1.8.7" then false
    end
  end

  case RUBY_VERSION
  when awesome
    puts "congrats, you're awesome"
  else
    puts "not really, you should: rvm install 1.9+"
  end
end
am_i_awesome?