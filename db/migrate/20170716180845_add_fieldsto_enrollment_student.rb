class AddFieldstoEnrollmentStudent < ActiveRecord::Migration
  def change
    add_column :enrollment_students, :first_name, :text
    add_column :enrollment_students, :last_name, :text
    add_column :enrollment_students, :student_num, :text
  end
end
