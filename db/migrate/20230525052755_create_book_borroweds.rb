class CreateBookBorroweds < ActiveRecord::Migration[7.0]
  def change
    create_table :book_borroweds do |t|
      t.references :book, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.date :borrow_date
      t.date :due_date

      t.timestamps
    end
  end
end
