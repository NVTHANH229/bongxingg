json.extract! book_return, :id, :book_borrowed_id, :book_id, :created_at, :updated_at
json.url book_return_url(book_return, format: :json)
