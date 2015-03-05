# method_missing good practices
# 1. Don’t introduce unnecessary Ghost Methods
# 2. Fallback on Kernel#method_missing() when you get a
#    call that you don’t know how to deal with


class WheelOfFortune
	def method_missing(name, *args)
		person = name.to_s.capitalize
		super unless %w[Ruby Python Java].include? person
		number = 0
		3.times do
			number = rand(10) + 1
			puts "#{number}..."
		end
		"#{person} got #{number}."
	end
end

guess_number = WheelOfFortune.new
puts guess_number.ruby
puts guess_number.python
puts guess_number.rails
