class AddExperienceAllowanceToSalaries < ActiveRecord::Migration
  def change
    add_money :salaries, :experience_allowance
  end
end
