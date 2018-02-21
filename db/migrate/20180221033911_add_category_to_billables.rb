class AddCategoryToBillables < ActiveRecord::Migration[5.1]
  def change
    add_column :billables, :category, :string
  end
end
