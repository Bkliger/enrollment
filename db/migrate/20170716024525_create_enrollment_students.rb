class CreateEnrollmentStudents < ActiveRecord::Migration
  def change
    create_table :enrollment_students do |t|
      t.references :enrollment, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
