$LOAD_PATH << '.'
require 'iodata'

class Section
  def show_employee_details
    data = IOData.new
    data.show_dept_empl_data
end
end

#sec = Section.new
#sec.show_employee_details
