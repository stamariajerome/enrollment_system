class Course < ApplicationRecord
  validates :class_code, uniqueness: true
end
