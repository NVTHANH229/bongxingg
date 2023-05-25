class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.references :category, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true
      t.references :nxb, null: false, foreign_key: true

      t.timestamps
    end
  end
end
