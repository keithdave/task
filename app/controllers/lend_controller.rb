class LendController < ApplicationController
 def index
    @lend = Lend.all
  end
  
  def edit
    @lend = Lend.find(params[:id])
  end
  def show
    @lend = Lend.find(params[:id])
  end
  
  def new
    @lend = Lend.new
  end
  
  def create
     @lend= Lend.new(lend_params)
 
      if@lend.save
       redirect_to @lend
	  else
       render 'new'
      end
  end
  
  def update
  @lend = Lend.find(params[:id])
 
   if @lend.update(lend_params)
    redirect_to @lend
   else
    render 'edit'
   end
  end
  
  def destroy
    @lend = Lend.find(params[:id])
    @lend.destroy
 
    redirect_to lend_path
  end
 
    private
  def lend_params
    params.require(:lend).permit(:asset_name, :cost)
  end
end


