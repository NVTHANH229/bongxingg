class Nxb < ApplicationRecord
    validates_presence_of :nxb_name, :release_date
    validate :date_up_to_present
    def date_up_to_present
        errors.add(:release_date, 'Year must not be in the future') if release_date >
       Time.now
    end
end
