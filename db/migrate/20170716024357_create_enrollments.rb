class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :therapist_name
      t.string :date

      t.timestamps null: false
    end
  end
end
