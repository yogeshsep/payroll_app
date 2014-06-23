class Employee < ActiveRecord::Base
  
has_many :salaries

  attr_accessible :address, :age, :branch, :city, :date_of_birth, :designation, :employee_end_date, :employee_start_date, :gender, :name


before_save :calculate_age
  def calculate_age
    self.age = ((DateTime.now - self.date_of_birth)/365)
  end

  validates :name, presence: true, format: { with: %r{^[A-Z][a-zA-Z\s]*} }  

  validates_inclusion_of :date_of_birth,
      :in => Date.civil(1900, 1, 1)..Date.today,
      :message => "Must be between 1900 and now"   

  validates :gender, :address, :city, :designation, :branch, :employee_start_date, presence: true

  validates_uniqueness_of :name
  
end
