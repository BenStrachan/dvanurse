class CreateClaims < ActiveRecord::Migration[5.1]
  def change
    create_table :claims do |t|
      t.string :cnc_hours
      t.string :cnc_visits
      t.string :en_hours
      t.string :en_visits
      t.string :nss_hours
      t.string :nss_visits
      t.string :rn_hours
      t.string :rn_visits
      t.string :claim_amount
      t.string :items

      t.timestamps
    end
  end
end
