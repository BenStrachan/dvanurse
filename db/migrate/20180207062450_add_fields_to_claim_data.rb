class AddFieldsToClaimData < ActiveRecord::Migration[5.1]
  def change
    add_column :claim_data, :patient_full_name, :string
    add_column :claim_data, :service, :string
  end
end
