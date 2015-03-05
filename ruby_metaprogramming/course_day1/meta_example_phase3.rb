require 'helper_methods'
include Instance

class CarModel
  attr_accessor :engine_info, :engine_price, :wheel_info, :wheel_price,
                :airbag_info, :airbag_price, :alarm_info, :alarm_price,
                :stereo_info, :stereo_price
end

Instance.display