class School < ApplicationRecord
    has_many :students
    validate :name_check

    def name_check
        if School.find_by_name(self.name)
            errors.add(:name, "must be unique")
        end
    end

end
