class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.string :gender
      t.string :dva_number

      t.timestamps
    end
  end
end
