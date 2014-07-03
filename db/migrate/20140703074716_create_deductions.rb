class CreateDeductions < ActiveRecord::Migration
  def change
    create_table :deductions do |t|
      t.integer :PF
      t.integer :ESI
      t.integer :TE
      t.integer :SHARE
      t.integer :OTHER

      t.timestamps
    end
  end
end
