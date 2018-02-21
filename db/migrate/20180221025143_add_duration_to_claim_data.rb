class AddDurationToClaimData < ActiveRecord::Migration[5.1]
  def change
    add_column :claim_data, :duration, :string
  end
end
