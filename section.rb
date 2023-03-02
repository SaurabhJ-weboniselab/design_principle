$LOAD_PATH << '.'
require 'file_link'
require 'csv'

class Section
include File_link
  def show_employee_details
    csv = File_link.get_file_name
    count = 0
    puts self.class.name
    csv.each do |row| 
      if self.class.name == row[2]
        puts "#{row[0]} #{row[1]} #{row[2]}"
        count += 1
      end
    end
    puts count
end
end

#sec = Section.new
#sec.show_employee_details
