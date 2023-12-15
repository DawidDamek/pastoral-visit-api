class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :description
      # t.string :email
      # t.string :password
      t.string :phone_number
      t.string :photo_url
      t.string :degree

      t.timestamps
    end
  end
end
