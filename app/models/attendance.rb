class Attendance < ActiveRecord::Base
  attr_accessible :Attend_Days, :CL, :EL, :LOP, :OD, :OTHER, :SL, :Working_Days, :salary_id
end
