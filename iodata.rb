$LOAD_PATH << '.'
require 'file_link'
require 'csv'
class IOData
include File_link
  def add_employee_data(emp_details_array)
    File_link.write(emp_details_array[0],emp_details_array[1],emp_details_array[2])
  end

  def read_all_employee_data
    csv = File_link.get_file_name
    count = 0
    puts "Displaying All Employee Data"
    csv.each do |row| 
      puts "#{row[0]} #{row[1]} #{row[2]}"
      count += 1
    end
    puts "No of Employees: #{count}"
  end

  def show_dept_empl_data
    csv = File_link.get_file_name
    count = 0
    puts "#{self.class.name} Employee"
    csv.each do |row| 
      if self.class.name == row[2]
        puts "#{row[0]} #{row[1]} #{row[2]}"
        count += 1
      end
    end
    puts "No of Employee in #{self.class.name} : #{count}"
  end
end

