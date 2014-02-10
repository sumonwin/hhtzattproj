class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :userid
      t.date :date
      t.date :reachtime
      t.date :leavetime

      t.timestamps
    end
  end
end
