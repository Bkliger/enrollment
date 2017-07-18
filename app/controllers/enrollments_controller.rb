class EnrollmentsController < ApplicationController
  def index
    @enrollments = Enrollment.all
  end

  def new
    @enrollment = Enrollment.create(date: Time.now.strftime("%m/%d/%Y"))
    @students = Student.all
    @students.each do |s|
        EnrollmentStudent.create(enrollment_id: @enrollment.id, first_name: s.first_name, last_name: s.last_name, student_num: s.student_num)
    end
    redirect_to edit_enrollment_path(@enrollment.id)
  end

    def show
      @enrollment = Enrollment.find(params[:enrollment_id])
      @enrollment_students = EnrollmentStudent.where( enrollment_id: @enrollment.id)

    end

    def destroy
        @enrollment = Enrollment.find(params[:enrollment_id])
        EnrollmentStudent.where(enrollment_id: @enrollment.id).delete_all
        @enrollment.delete
        redirect_to enrollments_path
    end


  def edit


  end

  def update
    @enrollment = Enrollment.find(params[:enrollment_id])
    @enrollment.update(enrollment_params)

    redirect_to enrollments_path
  end

private
  def enrollment_params
      params.require(:enrollment).permit(:therapist_name, :date, enrollment_students_attributes: [:id, :first_name, :last_name, :student_num, '_destroy'])
  end


end
