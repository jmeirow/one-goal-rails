class WebResourceChangeRecommendingMemberToInteger < ActiveRecord::Migration
  def change
    change_table :web_resources do |t|
      t.rename :recommending_member, :recommending_member_id  
    end
  end
end
