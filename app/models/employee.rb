class Employee < ActiveRecord::Base
  
has_many :salaries

has_many :attendances, :through => :salaries

has_many :deductions, :through => :salaries

attr_accessible :address, :age, :branch, :city, :date_of_birth, :designation, :employee_end_date, :employee_start_date, :gender, :name, :employee_category, :employee_code

before_create :increment_employee_code
  
  def increment_employee_code
    self.employee_code = (self.class.last.nil?) ? "000001" : ((self.class.last.employee_code.to_i) + 1).to_s.rjust(6, '0')
  end

before_save :calculate_age
  def calculate_age
    self.age = ((DateTime.now - self.date_of_birth)/365)
  end

  validates :name, presence: true, format: { with: %r{^[A-Z][a-zA-Z\s]*} }  

  validates_inclusion_of :date_of_birth,
      :in => Date.civil(1900, 1, 1)..Date.today,
      :message => "Must be between 1900 and now"   

  validates :employee_category, :gender, :address, :city, :designation, :branch, :employee_start_date, presence: true

  validates_uniqueness_of :name, :employee_code
  
end
