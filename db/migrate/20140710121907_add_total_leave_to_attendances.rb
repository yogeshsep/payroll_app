class AddTotalLeaveToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :TOTAL_LEAVE, :integer
  end
end
