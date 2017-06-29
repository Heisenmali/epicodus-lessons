class Fixnum
  define_method(:clock_angle) do |minutes|
    # "#{self}:#{minutes}"
    minute_angle = (360.0/60.0) * minutes
    hour_angle = (360.0/12.0) * self + (360.0/60.0) * 5.0 * (minutes/60.0)
    # "#{minute_angle},#{hour_angle}"
    minute_hour_angle = (minute_angle - hour_angle).abs
      if minute_hour_angle > 180.0
        minute_hour_angle = 360.0 - minute_hour_angle
      end
    # "#{minute_hour_angle} degrees"
    # x = Math.sin(minute_hour_angle*(Pi/180))
    # y = Math.cos(minute_hour_angle*(Pi/180))
    # "(#{x}, #{y}) coordinates"
    PI = Math.acos(-1)
    half_angle = minute_hour_angle*0.5
    o = 2.0*Math.sin(half_angle*(3.14159265358979/180.0))
    a = 2.0*Math.cos(half_angle*(3.14159265358979/180.0))

    return_length = o
  #   if minute_hour_angle > 90
  #     return_length = a
  #   end
  #   return_length
  end
end
