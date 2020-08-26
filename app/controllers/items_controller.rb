class ItemsController < ApplicationController
  def index
  end

  def new
    @item=Item.new

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
    params.require(:item).permit(:image,:item_name,:price,:content,:category_id,:product_state_id, :delivery_fee_id,:shipper_area_id,:ship_days_id)
  end
end
