class CreateBookReturns < ActiveRecord::Migration[7.0]
  def change
    create_table :book_returns do |t|
      t.references :book_borrowed, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
