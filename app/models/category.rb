class Category < ApplicationRecord
    validates_presence_of :category_name
    has_many :books
end
