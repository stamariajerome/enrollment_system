class ChangeCourses < ActiveRecord::Migration[5.0]
  def change
    change_table :courses do |t|
      t.rename :units, :course_unit
      t.rename :days, :day
    end
  end
end
