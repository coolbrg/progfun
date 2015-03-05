# Common Bug while using method_missing
class WheelOfFortune
	def method_missing(name, *args)
		person = name.to_s.capitalize
		3.times do
			number = rand(10) + 1
			puts "#{number}..."
		end
		"#{person} got #{number}."
	end
end

guess_number = WheelOfFortune.new
begin
	puts guess_number.ruby
rescue Exception => e
	puts e.message
end

begin
	puts guess_number.python
rescue Exception => e
	puts e.message
end

