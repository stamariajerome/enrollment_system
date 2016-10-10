class ChangeStudents < ActiveRecord::Migration[5.0]
  def change
    change_table :students do |t|
      t.string :home_address
      t.string :contact_number
    end
  end
end
