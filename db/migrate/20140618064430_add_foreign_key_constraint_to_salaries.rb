class AddForeignKeyConstraintToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :employee_id, :integer
  end
end
