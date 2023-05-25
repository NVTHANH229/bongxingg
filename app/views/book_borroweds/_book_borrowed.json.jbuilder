json.extract! book_borrowed, :id, :book_id, :student_id, :teacher_id, :borrow_date, :due_date, :created_at, :updated_at
json.url book_borrowed_url(book_borrowed, format: :json)
