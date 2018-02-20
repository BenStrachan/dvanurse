class AddClientToClaim < ActiveRecord::Migration[5.1]
  def change
    add_column :claims, :client_full_name, :string
  end
end
