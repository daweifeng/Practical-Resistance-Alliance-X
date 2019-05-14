class CreateToolkits < ActiveRecord::Migration[5.2]
  def change
    create_table :toolkits do |t|
      t.string :title
      t.string :author
      t.string :category
      t.text :overview

      t.timestamps
    end
  end
end
