class InventoryController < ApplicationController
  
  def index
    @inventory_collection = Inventory.all
	
  end
  
  def show
    @inventory = Inventory.find(params[:id])
	
  end
  
  def new
    @inventory = Inventory.new
	
  end
  
  def edit
    @inventory = Inventory.find(params[:id])
  end
  
  def create
    @inventory = Inventory.new(inventory_params)
	inv_name = @inventory.name
	
	
    if @inventory.save
      redirect_to @inventory
    else
      render 'new'
    end
  end
  
  def update
    @inventory = Inventory.find(params[:id])
	
 
    if @inventory.update(inventory_params)
      redirect_to @inventory
    else
      render 'edit'
    end
  end
  
  def destroy
    @inventory = Inventory.find(params[:id])
    @inventory.destroy
 
    redirect_to inventory_index_path
  end
 
  private
  
  def inventory_params
    params.require(:asset).permit(:name, :describtion, :department_id)
  end

end