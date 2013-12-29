class AddDescriptionToSystemTexts < ActiveRecord::Migration
  def change
    add_column :system_texts, :description, :text
  end
end
