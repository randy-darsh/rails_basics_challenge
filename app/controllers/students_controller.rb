class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    @student = Student.create(student_params)
    if @student.save
      redirect_to @student
    else
      render :new
    end
  end
end
