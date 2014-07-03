class AddEmployeeCodeToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employee_code, :string
  end
end
