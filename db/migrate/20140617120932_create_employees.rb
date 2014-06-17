class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.date :date_of_birth
      t.integer :age
      t.string :gender
      t.text :address
      t.string :city
      t.string :designation
      t.string :branch
      t.date :employee_start_date
      t.date :employee_end_date

      t.timestamps
    end
  end
end
