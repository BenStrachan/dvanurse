class AddFieldsToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :accepted_disability, :string
    add_column :clients, :admission_date, :string
    add_column :clients, :discharge_date, :string
    add_column :clients, :break_in_episode_of_care, :string
    add_column :clients, :start_date_break_episode, :string
    add_column :clients, :end_date_break_episode, :string
    add_column :clients, :refer_doctor_first_name, :string
    add_column :clients, :refer_doctor_last_name, :string
    add_column :clients, :refer_doctor_provider_number, :string
    add_column :clients, :refer_date, :string
    add_column :clients, :refer_type, :string
  end
end
