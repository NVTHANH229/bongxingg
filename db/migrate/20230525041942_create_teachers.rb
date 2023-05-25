class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :teacher_name
      t.date :teacher_DoB
      t.string :teacher_phone
      t.string :teacher_email
      t.string :teacher_address

      t.timestamps
    end
  end
end
