class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def show
    @school = School.find(params[:id])
    @students = @school.students
  end

  def support
    @school = School.find_by_id(params[:id])
  end

  def support_post
    redirect_to school_path(params[:id])
  end
end
