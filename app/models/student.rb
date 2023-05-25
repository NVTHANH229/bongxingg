class Student < ApplicationRecord
    validates_presence_of :student_name, :student_DoB, :student_phone
    validate :date_up_to_present
    def date_up_to_present
        errors.add(:student_DoB, 'Year must not be in the future') if student_DoB >
       Time.now
    end
end
