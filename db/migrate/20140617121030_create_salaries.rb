class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :employeesalary
      t.date :effective_from
      t.date :effective_to
      t.integer :basic
      t.integer :da

      t.timestamps
    end
  end
end
