class AddCaToSalaries < ActiveRecord::Migration
  def change
    add_money :salaries, :ca
  end
end
