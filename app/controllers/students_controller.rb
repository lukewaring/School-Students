class StudentsController < ApplicationController
  def show
    @student = Student.find_by_id(params[:id])
  end

  def new
    @student = Student.new
    @schools = School.all
  end

  def create
    student = Student.new(student_params)
    student.name = student.name.titlecase
    student.save
    redirect_to student_path(student.id)
  end

  def edit
    @student = Student.find_by_id(params[:id])
    @schools = School.all
  end

  def update
    student = Student.find_by_id(params[:id])
    student.update(student_params)
    redirect_to student_path(student)
  end

  def delete
   student = Student.find_by_id(params[:id])
   school = student.school
   student.destroy
   redirect_to school_path(school)
  end

  private

  def student_params
    params.require(:student).permit(:name, :age, :school_id)
  end

end
