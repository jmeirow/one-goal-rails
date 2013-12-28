class CreateSystemTexts < ActiveRecord::Migration
  def change
    create_table :system_texts do |t|
      t.string :key
      t.text :value

      t.timestamps
    end
  end
end
