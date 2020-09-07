class PurchasesController < ApplicationController
before_action :login_check
before_action :set_item,only:[:index,:create,:move_to_top,:reject_purchase_page]
before_action :move_to_top
before_action :reject_purchase_page

  def index
  end

  def create
    @purchase = ItemPurchase.new(purchase_params)
    @purchase.price= @item.price
    if @purchase.valid?
      pay_item
      @purchase.save
      return redirect_to root_path
    else
      render 'index'
    end
  end
 
  private
 
  def purchase_params
    params.permit(:token,:post_number,:prefecture,:cities,:house_number,:building,:telephone_number,:price,:item_id,:purchase_id).merge(user_id: current_user.id)
  end
#

  def pay_item 
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]  # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: @purchase.price,         #金額
      card: purchase_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類(日本円)
    )
  end


  def login_check
    authenticate_user!
  end

  def move_to_top
    if @item.user==current_user
      redirect_to root_path
    end
  end

  def reject_purchase_page   
    if @item.purchase
      redirect_to root_path
    end
  end

  def set_item
    @item =Item.find(params[:item_id])
  end
end
