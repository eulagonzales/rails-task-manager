class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]

    def index
        @tasks = Task.all
    end

    def show; end

    def new
        @task = Task.new
    end

    def create
       @task = Task.new(task_params)
       @task.save
          
       redirect_to task_path(@task)
    end

    def edit; end 

    def update
        @task.update(task_params)
  
        redirect_to task_path(@task)
    end

    
    def destroy
    @task.destroy
    redirect_to tasks_path
    end


##########################################################################

    private
  
     def task_params
      params.require(:task).permit(:title, :details, :completed)
    end
  
   def set_task
     @task = Task.find(params[:id])
   end


end


# class RestaurantsController < ApplicationController
#     before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  
#     def index
#       @restaurants = Restaurant.all
#     end
  
#     def show; end
  
#     def new
#       @restaurant = Restaurant.new
#     end
  
#     def create
#       @restaurant = Restaurant.new(restaurant_params)
#       @restaurant.save
  
#       redirect_to restaurant_path(@restaurant)
#     end
  
#     def edit; end
  
#     def update
#       @restaurant.update(restaurant_params)
  
#       redirect_to restaurant_path(@restaurant)
#     end
  
#     def destroy
#       @restaurant.destroy
  
#       redirect_to restaurants_path
#     end
  
#     private
  
#     def restaurant_params
#       params.require(:restaurant).permit(:name, :address, :rating)
#     end
  
#     def set_restaurant
#       @restaurant = Restaurant.find(params[:id])
#     end
#   end