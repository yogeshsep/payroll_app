class Deduction < ActiveRecord::Base
  
  belongs_to :salary

  attr_accessible :ESI, :OTHER, :PF, :SHARE, :TE, :salary_id

  before_save :calculate_ESI
  def calculate_ESI
  	if salary.employeesalary_paisas >= 15000
  		self.ESI == 0
  	else
  		self.ESI == (salary.employeesalary_paisas * 0.0175).round
  	end
  end

  before_save :calculate_PF
  def calculate_PF
    if employee.employee_category == "PERMANENT"
      self.PF == (salary.employeesalary_paisas * 0.12).round
    else
      self.PF == 0
    end
  end
end