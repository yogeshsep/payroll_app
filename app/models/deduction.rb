class Deduction < ActiveRecord::Base
  
  belongs_to :salary

  attr_accessible :ESI, :OTHER, :PF, :SHARE, :TE, :salary_id

  before_save :calculate_ESI
  def calculate_ESI
  	if salary.employeesalary_paisas >= 15000
  		self.ESI == 0
  	else
  		self.ESI = (salary.employeesalary_paisas * 0.0175).round
  	end
  end

end
