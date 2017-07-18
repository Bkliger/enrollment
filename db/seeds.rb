EnrollmentStudent.destroy_all
Student.destroy_all
Therapist.destroy_all
Enrollment.destroy_all


stu1 = Student.create(first_name: "Andy", last_name: "Martin", student_num: "312308")
stu2 = Student.create(first_name: "Jane", last_name: "Johnson", student_num: "318599")
stu3 = Student.create(first_name: "Bob", last_name: "Carver", student_num: "336950")
ther1 = Therapist.create(name: "greg ollano")
ther1 = Therapist.create(name: "martin morris")
# en1 = Enrollment.create(therapist_name: "greg ollano", date: "03/04/2017")
# EnrollmentStudent.create(enrollment_id: en1.id, student_id: stu1.id)
# EnrollmentStudent.create(enrollment_id: en1.id, student_id: stu2.id)
