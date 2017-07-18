class Student < ActiveRecord::Base
  has_many :enrollment_students
  has_many :enrollment_students, through: :students
end
