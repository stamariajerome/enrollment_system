class Schedule < ApplicationRecord
  belongs_to :user

  validates :class_code, uniqueness: true

  class << self
    def my_schedule(user_id)
      where(user_id: user_id)
    end
  end
end
