$LOAD_PATH << '.'
require 'section'
class Service < Section
  def something
  end
end

ser = Service.new
ser.show_employee_details
