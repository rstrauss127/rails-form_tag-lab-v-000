class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.create(name: params[:student][:name])
    redirect_to students_path
  end

end
