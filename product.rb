$LOAD_PATH << '.'
require 'section'
class Product < Section
  def something
  end
end

prod = Product.new
prod.show_employee_details
