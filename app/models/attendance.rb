class Attendance < ActiveRecord::Base
 
  belongs_to :salary

  attr_accessible :Attend_Days, :CL, :EL, :LOP, :OD, :OTHER, :SL, :Working_Days, :salary_id

  before_save :set_Working_Days
  def set_Working_Days
    self.Working_Days = 26
  end

end
