class Salary < ActiveRecord::Base
  attr_accessible :basic, :da, :effective_from, :effective_to, :employeesalary, :hra, :ca, :sa, :employee_id

  belongs_to :employee, :foreign_key => "employee_id"


before_save :calculate_employeesalary
  def calculate_employeesalary
    self.employeesalary = (basic + da + hra + ca + sa)
  end

validates_inclusion_of :effective_from,
      :in => Date.civil(1993, 1, 1)..Date.today,
      :message => "Must be between 1993 and now"   

  validates :basic, presence: true

end
