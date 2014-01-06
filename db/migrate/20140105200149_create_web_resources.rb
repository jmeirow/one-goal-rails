class CreateWebResources < ActiveRecord::Migration
  def change
    create_table :web_resources do |t|
      t.string :url
      t.string :description
      t.string :recommending_member
      t.string :status
      t.string :declined_reason

      t.timestamps
    end
  end
end
