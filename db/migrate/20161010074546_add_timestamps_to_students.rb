class AddTimestampsToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :updated_at, :datetime
    add_column :students, :created_at, :datetime
  end
end
