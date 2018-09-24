class FeatureController < ApplicationController
  def index
    @feature = Feature.all
  end
  def create
    @inventory = Inventory.find(params[:inventory_id])
    @feature = @inventory.features.create(feature_params)
	 
   
    if @feature.save
      redirect_to @inventory
    else
      render 'new'
    end
  end
  
  
  def destroy
    @inventory = Inventory.find(params[:inventory_id])
    @feature = @inventory.features.find(params[:id])
    @feature.destroy
    redirect_to inventory_path(@inventory)
  end
 
  private
  def feature_params 
  params.permit(:name, :content)
	 
  end
end