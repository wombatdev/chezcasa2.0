class CreateUsers < ActiveRecord::Migration[5.1]
    def change
        create_table :users do |t|
            t.string :name, null: false
            t.string :username, null: false
            t.integer :zip_code, null: false
            t.string :photo_url
            t.timestamps null: false
    end
  end
end
