class AddHraToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :hra, :integer
  end
end
