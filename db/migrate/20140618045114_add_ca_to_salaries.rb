class AddCaToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :ca, :integer
  end
end
