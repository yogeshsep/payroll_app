class AddEmployeeCategoryToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :employee_category, :string
  end
end
