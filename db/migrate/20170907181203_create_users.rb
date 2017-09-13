class CreateUsers < ActiveRecord::Migration[5.1]
    def change
        create_table :users do |t|
            t.string :name, null: false
            t.string :username, null: false, unique: true, index: true
            t.string :email, null: false, unique: true
            t.integer :zip_code, null: false
            t.string :photo_url
            t.timestamps null: false
    end
  end
end
