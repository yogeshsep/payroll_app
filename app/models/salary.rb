class Salary < ActiveRecord::Base

  register_currency :inr

  monetize :basic_paisas, :da_paisas, :employeesalary_paisas, :hra_paisas, :ca_paisas, :sa_paisas
  
  belongs_to :employee

  attr_accessible :basic_paisas, :da_paisas, :employeesalary_paisas, :hra_paisas, :ca_paisas, :sa_paisas, :effective_from, :effective_to, :employee_id

before_save :calculate_effective_to
  def calculate_effective_to
    self.effective_to = self.effective_from + 1.year
  end

before_save :calculate_employeesalary
  def calculate_employeesalary
    self.employeesalary_paisas = (self.basic_paisas + self.da_paisas + self.hra_paisas + self.ca_paisas + self.sa_paisas)
  end

validates_inclusion_of :effective_from,
      :in => Date.civil(1993, 1, 1)..Date.today,
      :message => "Must be between 1993 and now"   

  validates :basic_paisas, :da_paisas, :hra_paisas, :ca_paisas, :sa_paisas, presence: true

  validates :employee_id, presence: true

end
