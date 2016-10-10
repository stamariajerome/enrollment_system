class Student < ApplicationRecord
  validates :student_id, presence: true, uniqeness: true, length: { maximum: 7 }
end
