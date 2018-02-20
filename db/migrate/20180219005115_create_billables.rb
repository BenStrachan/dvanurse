class CreateBillables < ActiveRecord::Migration[5.1]
  def change
    create_table :billables do |t|
      t.string :item_number
      t.string :visit_type
      t.integer :min_visit
      t.integer :max_visit
      t.float :core_fee

      t.timestamps
    end
  end
end
