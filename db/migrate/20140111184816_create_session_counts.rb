class CreateSessionCounts < ActiveRecord::Migration
  def change
    create_table :session_counts do |t|
      t.integer :user_id
      t.datetime :login_date

      t.timestamps
    end
  end
end
