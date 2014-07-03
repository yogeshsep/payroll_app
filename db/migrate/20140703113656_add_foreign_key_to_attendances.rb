class AddForeignKeyToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :salary_id, :integer
  end
end
