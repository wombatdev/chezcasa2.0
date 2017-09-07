class CreateMeals < ActiveRecord::Migration[5.1]
    def change
        create_table :meals do |t|
            t.string :name, null: false
            t.string :ingredients, null: false, array: true, default: []
#            t.string :tags, array: true, default: []
#            t.string :category, index: true, null: false, array: true, default: []
            t.decimal :price, null: false, precision: 8, scale: 2
            t.string :portion, null: false
            t.integer :quantity, null: false
            t.integer :available, null: false
            t.references :chef, index: true, null: false
            t.text :description, null: false, length: {minimum: 40}
            t.timestamps null: false
        end
    end
end
