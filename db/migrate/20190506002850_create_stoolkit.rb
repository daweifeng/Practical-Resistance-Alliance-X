class CreateStoolkit < ActiveRecord::Migration[5.2]
  def change
    create_table :stoolkits do |t|
      t.string "title"
      t.string "author"
      t.text "overview"
      t.integer "toolkit_id"

      t.timestamps
    end
  end
end
