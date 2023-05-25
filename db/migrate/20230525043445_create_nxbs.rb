class CreateNxbs < ActiveRecord::Migration[7.0]
  def change
    create_table :nxbs do |t|
      t.string :nxb_name
      t.date :release_date

      t.timestamps
    end
  end
end
