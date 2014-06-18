class AddSaToSalaries < ActiveRecord::Migration
  def change
    add_column :salaries, :sa, :integer
  end
end
