class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :area
      t.string :division

      t.timestamps
    end
  end
end
