class NowChangeRecommendingMemberIdToInteger < ActiveRecord::Migration
  def change
    change_column :web_resources, :recommending_member_id, :integer
  end
end
