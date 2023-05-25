json.extract! book, :id, :book_name, :category_id, :author_id, :nxb_id, :created_at, :updated_at
json.url book_url(book, format: :json)
