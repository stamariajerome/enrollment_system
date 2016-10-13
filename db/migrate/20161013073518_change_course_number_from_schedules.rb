class ChangeCourseNumberFromSchedules < ActiveRecord::Migration[5.0]
  def change
    change_column :schedules, :course_number, :string
  end
end
