$LOAD_PATH << '.'
require 'section'
class Support < Section
 def something
 end
end

sup = Support.new
sup.show_employee_details
