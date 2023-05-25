class BookReturn < ApplicationRecord
  belongs_to :book_borrowed
  belongs_to :book
  validate :date_up_to_present
    def date_up_to_present
        errors.add(:book_borrowed, 'Year must not be in the future') if book_borrowed >
       Time.now
    end

end
