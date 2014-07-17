
class SalariesController < ApplicationController

  autocomplete :employee, :employee_code, :display_value => :employee_code, :full => true, :order => 'created_at DESC'

  def new
    @salary = Salary.new
    @attendance = @salary.attendances.build   
    @deduction = @salary.deductions.build   
  end

  def create
   @salary = Salary.new(params[:salary])
    if @salary.save         
      flash[:success] = "Created a new month salary!"
      redirect_to salaries_path
    else
      flash[:error] = "Couldn't Create salary"  
      render  'new'
    end
  end

  def edit
    @salary = Salary.find(params[:id])
  end

  def index
    @salary = Salary.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @salary = Salary.find(params[:id])
    @employee =Employee.all
  end

  def update
    @salary = Salary.find(params[:id])
      if @salary.update_attributes(params[:salary])
        flash[:success] = "Updated Employee Salary Details"
        redirect_to salaries_path(@salary)
      else
        flash[:alert] ="Fill the necessary fields"
        render 'edit'
      end
  end

  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy
    flash[:notice] = "Salary Details of a Employee Get Deleted"
    redirect_to salaries_path
  end
end
