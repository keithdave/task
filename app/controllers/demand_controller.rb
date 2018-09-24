class DemandController < ApplicationController
    def index
        @demand = Demand.all
    end
	  
	def show
        @demand = Demand.find(params[:id])
    end
	
	def new
        @demand = Demand.new
    end
  
    def edit
        @demand= Demand.find(params[:id])
    end
  
    def create
        @inventory = Inventory.find(params[:inventory_id])
        @demand = @inventory.demands.create(demand_params)
	 
   
        if @demand.save
          redirect_to @inventory
        else
          render 'new'
        end
    end
	
	def update
    @demand = Demand.find(params[:id])
 
        if @demand.update(demand_params)
          redirect_to @demand
        else
          render 'edit'
        end
    end
      
      
    def destroy
        @inventory = Inventory.find(params[:inventory_id])
        @demand = @inventory.demands.find(params[:id])
        @demand.destroy
        redirect_to inventory_path(@inventory)
    end
     
    private
    def demand_params 
        params.permit(:name, :quantity)
         
    end
    
end