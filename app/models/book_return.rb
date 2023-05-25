class BookReturn < ApplicationRecord
  belongs_to :book_borrowed
  belongs_to :book
  

end
