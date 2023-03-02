
module File_link
  
  def self.write(name,desig,dept)
    file_name = "employeedetails.csv"
    CSV.open(file_name, "a") do |file|
    file << [name,desig,dept]
    end
  end
  def self.get_file_name
    file_name = "employeedetails.csv"
    file = CSV.parse(File.open(file_name,'r'))
    file
  end
end
