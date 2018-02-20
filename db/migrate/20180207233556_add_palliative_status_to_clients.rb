class AddPalliativeStatusToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :palliative_status, :string
  end
end
