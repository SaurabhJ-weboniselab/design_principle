$LOAD_PATH << '.'
require 'iodata'
require 'csv'
class Company
  def addEmployee(emp_name, emp_desig,emp_dept)
    emp_data=[emp_name, emp_desig, emp_dept]
    data = IOData.new
    data.add_employee_data emp_data
  end

  def show_employee
    data = IOData.new
    data.read_all_employee_data
  end
end

cm = Company.new
#cm.addEmployee("abcc","intern","Support")

cm.show_employee
