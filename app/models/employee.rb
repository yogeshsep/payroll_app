class Employee < ActiveRecord::Base
  attr_accessible :address, :age, :branch, :city, :date_of_birth, :designation, :employee_end_date, :employee_start_date, :gender, :name


has_many :salaries, :foreign_key => "employee_id"


before_save :calculate_age
  def calculate_age
    self.age = ((DateTime.now - self.date_of_birth)/365)
  end

  validates :name, presence: true, format: { with: %r{^[A-Z][a-zA-Z\s]*} }  

  validates_inclusion_of :date_of_birth,
      :in => Date.civil(1900, 1, 1)..Date.today,
      :message => "Must be between 1900 and now"   

  validates :gender, presence: true

  validates :address, presence: true
  
  validates :city, presence: true  

  validates :designation, presence: true

  validates :branch, presence: true    

  validates :employee_start_date, presence: true

end
