class CreateIntermediates < ActiveRecord::Migration[5.2]
    def change
      create_table :intermediates, :id => false do |t|
        t.belongs_to :category, index: true
        t.belongs_to :toolkit, index: true

        t.timestamps null: false
      end
      add_foreign_key :intermediates, :categories
      add_foreign_key :intermediates, :toolkits
    end
  end
  