class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.integer :user_id
      t.time :login_date_time

      t.timestamps
    end
  end
end
