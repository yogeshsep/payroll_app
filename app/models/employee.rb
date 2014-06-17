class Employee < ActiveRecord::Base
  attr_accessible :address, :age, :branch, :city, :date_of_birth, :designation, :employee_end_date, :employee_start_date, :gender, :name
end
