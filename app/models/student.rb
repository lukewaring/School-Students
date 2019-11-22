class Student < ApplicationRecord
    belongs_to :school
    has_many :courses
    has_many :teachers, through: :courses
    validate :name_check

    def name_check
        if Student.find_by_name(self.name)
            errors.add(:name, "must be unique")
        end
    end
end
