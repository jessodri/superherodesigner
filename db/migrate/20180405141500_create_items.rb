class CreateItems < ActiveRecord::Migration[5.1]

    def change
        create_table :items do |t|
            t.string :label
            t.text :description
            t.decimal :price
            t.references :item_type, foreign_key: true

            t.timestamps
        end
    end

end