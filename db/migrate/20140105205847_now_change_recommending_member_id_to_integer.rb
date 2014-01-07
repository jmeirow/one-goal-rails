class NowChangeRecommendingMemberIdToInteger < ActiveRecord::Migration
  def change
    remove_column :web_resources, :recommending_member_id, :string
    add_column :web_resources, :recommending_member_id, :integer
  end
end
