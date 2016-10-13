class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.integer :class_code
      t.string :course_number
      t.string :course_description
      t.integer :course_unit
      t.string :course_schedule
      t.string :days
      t.string :room
    end
  end
end
