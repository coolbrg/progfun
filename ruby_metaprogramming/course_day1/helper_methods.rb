module Instance
  def self.display
    c = CarModel.new
    c.engine_info = '500 cc'
    c.engine_price = 400
    puts "Engine info  : #{c.engine_info}"
    puts "Engine price : #{c.engine_price}"
  end
end