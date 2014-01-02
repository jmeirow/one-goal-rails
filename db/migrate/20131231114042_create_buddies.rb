class CreateBuddies < ActiveRecord::Migration
  def change
    create_table :buddies do |t|
      t.integer :member_id_1
      t.integer :member_id_2

      t.timestamps
    end
  end
end
