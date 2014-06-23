class AddSaToSalaries < ActiveRecord::Migration
  def change
    add_money :salaries, :sa
  end
end
