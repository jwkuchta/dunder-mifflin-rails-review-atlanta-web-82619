class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find(params[:id])
        # @employees = Employee.all.select {|ee| ee.dog_id == self.id}
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.update(dog_params)
    end

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

end