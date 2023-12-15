class CreateRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :requests do |t|
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
      t.boolean :processed, default: false

      t.timestamps
    end
  end
end
