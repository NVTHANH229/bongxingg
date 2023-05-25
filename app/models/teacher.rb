class Teacher < ApplicationRecord
    validates_presence_of :teacher_name, :teacher_DoB, :teacher_phone
    validate :date_up_to_present
    def date_up_to_present
        errors.add(:teacher_DoB, 'Year must not be in the future') if teacher_DoB >
       Time.now
    end

end
