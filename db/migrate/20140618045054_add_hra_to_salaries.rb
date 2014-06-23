class AddHraToSalaries < ActiveRecord::Migration 
  def change
    add_money :salaries, :hra
  end
end
