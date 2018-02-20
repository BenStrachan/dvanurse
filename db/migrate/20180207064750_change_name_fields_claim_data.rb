class ChangeNameFieldsClaimData < ActiveRecord::Migration[5.1]
  def change
    rename_column :claim_data, :patient_full_name, :client_full_name
  end
end
