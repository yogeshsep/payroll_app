class Deduction < ActiveRecord::Base
  
  belongs_to :salary

  attr_accessible :ESI, :OTHER, :PF, :SHARE, :TE, :salary_id

end