class DataSource
  def initialize
  end

  def get_mouse_info(workstation_id)
    "Dual Optical"
  end

  def get_mouse_price(workstation_id)
    700
  end

  def get_keyboard_info(workstation_id)
    "Standard UK"
  end

  def get_keyboard_price(workstation_id)
    900
  end

  def get_cpu_info(workstation_id)
    "2.16 Ghz"
  end

  def get_cpu_price(workstation_id)
    9000
  end
end

# puts "===============> Workstation Info: "
# ds = DataSource.new
# puts "get_mouse_info       : #{ds.get_mouse_info('P4')}"
# puts "get_mouse_price      : #{ds.get_mouse_price('P4')}"
# puts "get_keyboard_info    : #{ds.get_keyboard_info('P4')}"
# puts "get_keyboard_price   : #{ds.get_keyboard_price('P4')}"
# puts "get_cpu_info         : #{ds.get_cpu_info('P4')}"
# puts "get_cpu_price        : #{ds.get_cpu_price('P4')}"
