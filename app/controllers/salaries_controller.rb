class SalariesController < ApplicationController
  def new
    @salary = Salary.new
  end

  def create
   @salary = Salary.new(params[:salary])
    if @salary.save
      flash[:success] = "Created a new month salary!"
      redirect_to salarys_path
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
  end

  def update
    @salary = Salary.find(params[:id])
      if @salary.update_attributes(params[:salary])
        flash[:success] = "Updated Employee Salary Details"
        redirect_to salarys_path(@salary)
      else
        flash[:alert] ="Fill the necessary fields"
        render 'edit'
      end
  end

  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy
    flash[:notice] = "Salary Details of a Employee Get Deleted"
    redirect_to salarys_path
  end
end
