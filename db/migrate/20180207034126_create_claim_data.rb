class CreateClaimData < ActiveRecord::Migration[5.1]
  def change
    create_table :claim_data do |t|
      t.string :provider_full_name
      t.string :provider_id
      t.string :date_of_service

      t.timestamps
    end
  end
end
