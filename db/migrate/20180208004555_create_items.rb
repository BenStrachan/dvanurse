class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_number
      t.string :classification

      t.timestamps
    end
  end
end
