class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.date :student_DoB
      t.string :student_phone
      t.string :student_email
      t.string :student_address

      t.timestamps
    end
  end
end
