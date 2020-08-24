class ItemsController < ApplicationController
  def index
  end

  def new
    @item=Item.new
  end

  def create
   Item.create(item_params)
  end

  private

  def item_params
    params.require(:item).permit(:image,:name,:price,:content,:category,:product_state,:delivery_fee,:shipper_area,:ship_days)
  end
end
