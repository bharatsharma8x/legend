class CreateQuotes < ActiveRecord::Migration[7.1]
  def change
    create_table :quotes do |t|
      t.string :title
      t.references :legend, null: false, foreign_key: true

      t.timestamps
    end
  end
end
