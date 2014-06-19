class Salary < ActiveRecord::Base
  
  belongs_to :employee, :foreign_key => "employee_id"


  attr_accessible :basic, :da, :effective_from, :effective_to, :employeesalary, :hra, :ca, :sa, :employee_id



before_save :calculate_effective_to
  def calculate_effective_to
    self.effective_to = self.effective_from + 1.year
  end


before_save :calculate_employeesalary
  def calculate_employeesalary
    self.employeesalary = (basic + da + hra + ca + sa)
  end

validates_inclusion_of :effective_from,
      :in => Date.civil(1993, 1, 1)..Date.today,
      :message => "Must be between 1993 and now"   

  validates :basic, presence: true

end
