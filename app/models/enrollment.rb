class Enrollment < ActiveRecord::Base
  has_many :enrollment_students
  has_many :students, through: :enrollment_students
  accepts_nested_attributes_for :enrollment_students, allow_destroy: true
end
