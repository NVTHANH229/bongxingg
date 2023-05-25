class Book < ApplicationRecord
  belongs_to :category
  belongs_to :author
  belongs_to :nxb
  validates_presence_of :book_name, :category, :author, :nxb
  
end
