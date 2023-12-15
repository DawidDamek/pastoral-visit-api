class CreateVisits < ActiveRecord::Migration[7.1]
  def change
    create_table :visits do |t|
      t.string :name
      t.string :surname
      t.integer :house_members_count
      t.datetime :schedule
      t.string :city
      t.string :street
      t.string :number
      t.string :subnumber
      t.string :zip_code
      t.string :country
      t.string :email
      t.string :phone_number
      t.string :status

      t.references :request, foreign_key: true
      t.references :priest, foreign_key: { to_table: 'users' }
      t.timestamps
    end
  end
end
