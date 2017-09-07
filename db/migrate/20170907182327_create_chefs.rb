class CreateChefs < ActiveRecord::Migration[5.1]
    def change
        create_table :chefs do |t|
            t.string :name, null: false
            t.string :tagline, null: false, length: {maximum: 140}
            t.integer :zip_code, null: false
            t.string :photo_url
            t.string :bio, null: false, length: {maximum: 500}
            t.timestamps null: false
        end
    end
end