class Author < ApplicationRecord
    validates_presence_of :author_name
    has_many :books
end
