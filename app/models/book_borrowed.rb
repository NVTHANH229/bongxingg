class BookBorrowed < ApplicationRecord
  belongs_to :book
  belongs_to :student
  belongs_to :teacher
  validates_presence_of :borrow_date, :due_date
  validate :date_up_to_present
    def date_up_to_present
        errors.add(:borrow_date, 'Year must not be in the future') if borrow_date >
       Time.now
    end
    validate :date_up_to_present
    def date_up_to_present
        errors.add(:due_date, 'Year must not be in the future') if due_date >
       Time.now
    end
end
