class Salary < ActiveRecord::Base
  attr_accessible :basic, :da, :effective_from, :effective_to, :employeesalary, :hra, :ca, :sa


validates_inclusion_of :effective_from,
      :in => Date.civil(1993, 1, 1)..Date.today,
      :message => "Must be between 1993 and now"   

  validates :basic, presence: true

end
