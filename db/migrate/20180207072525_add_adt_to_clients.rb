class AddAdtToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :accepted_disability_text, :string
  end
end
