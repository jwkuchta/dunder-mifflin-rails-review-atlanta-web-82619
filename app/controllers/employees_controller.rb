class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end
    
    def show
        @employee = Employee.find(params[:id])
    end
    
    def new
        @employee = Employee.new
    end
    
    def create
        @employee = Employee.create(employee_params)
        @dogs = Dog.all

        redirect_to employee_path(@employee)
    end
    
    def edit
        @aemployee = Employee.find(params[:id])
    end
    
    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
    
        redirect_to employee_path(@employee)
    end

    def destroy
         
        @employee.destroy
        redirect_to employees_path

    end

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :image_url, :dog_id)
    end

    
end
