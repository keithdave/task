class EmployeeController < ApplicationController
  def index
    @employee = Employee.all
  end
  
  def edit
    @employee = Employee.find(params[:id])
  end
  def show
    @employee = Employee.find(params[:id])
  end
  
  def new
    @employee = Employee.new
  end
  
  def create
     @employee= Employee.new(employee_params)
 
      if@employee.save
       redirect_to @employee
	  else
       render 'new'
      end
  end
  
  def update
  @employee = Employee.find(params[:id])
 
   if @employee.update(employee_params)
    redirect_to @employee
   else
    render 'edit'
   end
  end
  
  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
 
    redirect_to employee_path
  end
 
    private
  def employee_params
    params.require(:employee).permit(:name, :post, :department_id)
  end
end
