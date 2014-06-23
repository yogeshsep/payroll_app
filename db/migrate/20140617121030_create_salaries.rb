class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.money :employeesalary
      t.money :basic
      t.money :da
      t.date :effective_from
      t.date :effective_to

      t.timestamps
    end
  end
end
