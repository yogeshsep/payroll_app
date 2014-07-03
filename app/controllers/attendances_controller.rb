class AttendancesController < ApplicationController
  def new
    @attendance = Attendance.new
  end

  def create
   @attendance = Attendance.new(params[:attendance])
    if @attendance.save
      flash[:success] = "Attendance Record Created Successfully!"
      redirect_to salaries_path
    else
      flash[:error] = "Couldn't Create Attendance Record"  
      render  'new'
    end
  end

  def index
    @attendance = Attendance.all
  end

  def show
    @attendance = Attendance.find(params[:id])
  end

  def update
    @attendance = Attendance.find(params[:id])
      if @attendance.update_attributes(params[:attendance])
        flash[:success] = "Updated Employee Attendance Details"
        redirect_to salaries_path(@salary)
      else
        flash[:alert] ="Fill the necessary fields"
        render 'edit'
      end
  end

  def destroy
    @attendance = Attendance.find(params[:id])
    @attendance.destroy
    flash[:notice] = "Attendance Details of a Employee Get Deleted"
    redirect_to salaries_path
  end
end
