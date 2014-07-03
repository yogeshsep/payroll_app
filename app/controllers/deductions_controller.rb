class DeductionsController < ApplicationController
  def new
    @deduction = Deduction.new
  end

  def create
   @deduction = Deduction.new(params[:attendance])
    if @deduction.save
      flash[:success] = "Deductions are deduced from Salary!"
      redirect_to salaries_path
    else
      flash[:error] = "Couldn't deduct"  
      render  'new'
    end
  end

  def index
    @deduction = Deduction.all
  end

  def show
    @deduction = Deduction.find(params[:id])
  end

  def update
    @deduction = Deduction.find(params[:id])
      if @deduction.update_attributes(params[:deduction])
        flash[:success] = "Updated Salary Deduction Details"
        redirect_to salaries_path(@salary)
      else
        flash[:alert] ="Fill the necessary fields"
        render 'edit'
      end
  end

  def destroy
    @deduction = Deduction.find(params[:id])
    @deduction.destroy
    flash[:notice] = "Salary Deduction Details of a Employees Get Deleted"
    redirect_to salaries_path
  end
end
