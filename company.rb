$LOAD_PATH << '.'
require 'file_link'
require 'csv'
class Company
include File_link
  def addEmployee(emp_name, emp_desig,emp_dept)
    File_link.write(emp_name,emp_desig,emp_dept)
  end
end

cm = Company.new
cm.addEmployee("abcc","intern","Support")

