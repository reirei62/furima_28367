class ItemsController < ApplicationController

  def index
    @items=Item.includes(:user).order("created_at DESC")
  end

  def new
    authenticate_user!
    @item=Item.new

  end

  def edit
    @item=Item.find(params[:id])
  end

  def update
    @item=Item.find(params[:id])
    if @item.update(item_params) 
      redirect_to item_path
    else
      render :edit
    end
    
  end
  
  def show
    @item=Item.find(params[:id])
  end

  def create
   @item=Item.new(item_params)
   
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:image,:item_name,:price,:content,:category_id,:product_state_id, :delivery_fee_id,:shipper_area_id,:ship_days_id).merge(user_id: current_user.id)
  end
end
