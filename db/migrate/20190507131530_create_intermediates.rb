class CreateIntermediates < ActiveRecord::Migration[5.2]
    def change
      create_table :intermediates, :id => false do |t|
        t.string :toolkit_id
        t.string :category_id
      end
    end
  end
  