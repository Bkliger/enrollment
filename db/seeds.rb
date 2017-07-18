EnrollmentStudent.destroy_all
Student.destroy_all
Therapist.destroy_all
Enrollment.destroy_all


stu1 = Student.create(first_name: "Razi", last_name: "Corne", student_num: "378288")
stu2 = Student.create(first_name: "Angela", last_name: "Espinoza", student_num: "312309")
stu3 = Student.create(first_name: "Delia", last_name: "Espinoza", student_num: "312308")
stu4 = Student.create(first_name: "Galilea", last_name: "Espinoza", student_num: "326612")
stu5 = Student.create(first_name: "Malia", last_name: "Kobayashi", student_num: "316012")
stu6 = Student.create(first_name: "Elias", last_name: "Lehman", student_num: "322422")
stu7 = Student.create(first_name: "Ian", last_name: "McCue", student_num: "318599")
stu8 = Student.create(first_name: "Hope Ilana", last_name: "Rodas", student_num: "336950")

ther1 = Therapist.create(name: "Greg Ollano")
ther2 = Therapist.create(name: "Martin Morris")
ther3 = Therapist.create(name: "George Alexander")
ther4 = Therapist.create(name: "Dylan Ballard")
