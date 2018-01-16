class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :identity_number
      t.string :upin
      t.string :phone_number
      t.string :speciality

      t.timestamps
    end
  end
end
