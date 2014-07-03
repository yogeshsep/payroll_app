class AddForeignKeyToDeductions < ActiveRecord::Migration
  def change
    add_column :deductions, :salary_id, :integer
  end
end
