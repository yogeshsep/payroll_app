class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :OD
      t.integer :EL
      t.integer :CL
      t.integer :SL
      t.integer :LOP
      t.integer :Working_Days
      t.integer :Attend_Days
      t.integer :OTHER

      t.timestamps
    end
  end
end
