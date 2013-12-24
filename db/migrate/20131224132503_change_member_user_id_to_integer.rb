class ChangeMemberUserIdToInteger < ActiveRecord::Migration
  def change
    reversible do |dir|
      change_table :members do |t|
        dir.down { t.change :user_id, :integer }
      end
    end
  end
end
