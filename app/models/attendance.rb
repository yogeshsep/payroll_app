class Attendance < ActiveRecord::Base
 
  belongs_to :employee

  belongs_to :salary

  attr_accessible :Attend_Days, :CL, :EL, :LOP, :OD, :OTHER, :SL, :Working_Days, :salary_id, :TOTAL_LEAVE
  
  before_save :calculate_TOTAL_LEAVE
  def calculate_TOTAL_LEAVE
    self.TOTAL_LEAVE = self.EL + self.CL + self.SL
  end

  before_save :set_Working_Days
  def set_Working_Days
    self.Working_Days = 26
  end

  before_save :set_Attend_Days
  def set_Attend_Days
    self.Attend_Days = self.Working_Days - self.EL - self.CL - self.SL
  end  

  before_save :calculate_LOP
  def calculate_LOP
    if employee.employee_category == "PERMANENT" && self.TOTAL_LEAVE > 3
      self.LOP = (salary.employeesalary_paisas / 30)
    elsif employee.employee_category == "CONTRACTUAL" && self.TOTAL_LEAVE > 2
      self.LOP = (salary.employeesalary_paisas / 30)
    else
      self.LOP = (salary.employeesalary_paisas / 30)
    end
  end

end
