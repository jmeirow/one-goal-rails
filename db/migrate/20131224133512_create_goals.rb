class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.string :description
      t.string :display_name
      t.string :club_name
      t.string :display_club
      t.string :request_buddy

      t.timestamps
    end
  end
end
