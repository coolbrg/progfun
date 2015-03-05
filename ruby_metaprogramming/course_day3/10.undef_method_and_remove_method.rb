# Prevents the current class from responding to calls
# to the named method
module Government
  def do_marriage_early
    puts "Doing marriage early."
  end
end

# module Panchayat
#   def do_marriage_early
#     puts "Doing marriage early."
#   end
# end

class Parent
  include Government
  # include Panchayat

  def go_to_shool
    puts "I am going to school."
  end

  def do_kitchen_work
    puts "Doing kitchen work. :("
  end

  def watch_tv
    puts "Yahoo!!!, I am watching TV."
  end

  def allow_to_come_late
    puts "I am allowed to come late."
  end

  def method_missing(name, *args, &blk)
    puts "NOTE: #{self.class} not allowed to #{name.to_s.gsub(/_/, ' ')}."
  end
end

class Boy < Parent
  undef_method :do_kitchen_work
end

class Girl < Parent
  undef_method :go_to_shool
  undef_method :watch_tv
  undef_method :allow_to_come_late
end

boy = Boy.new
puts "1. ==============> Boy: "
boy.go_to_shool
boy.watch_tv
boy.allow_to_come_late
boy.do_kitchen_work
boy.do_marriage_early

girl = Girl.new
puts "2. ==============>  Girl: "
girl.go_to_shool
girl.watch_tv
girl.allow_to_come_late
girl.do_kitchen_work
girl.do_marriage_early


puts "3. ==============> After Government's Marriage Amendment Act: "
module Government
  remove_method :do_marriage_early
end
boy.do_marriage_early
girl.do_marriage_early
