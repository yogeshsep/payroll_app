class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
   @employee = Employee.new(params[:employee])
    if @employee.save
      flash[:success] = "Created Employee Successfully!"
      redirect_to employees_path
    else
      flash[:error] = "Couldn't Create a Employee"  
      render  'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def index
    @employee = Employee.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
      if @employee.update_attributes(params[:employee])
        flash[:success] = "Updated Employee Details"
        redirect_to employees_path(@employee)
      else
        flash[:alert] ="Fill the necessary fields"
        render 'edit'
      end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    flash[:notice] = "Employee Get Deleted"
    redirect_to employees_path
  end
end
