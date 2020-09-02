class PurchasesController < ApplicationController
  def index
    @item=Item.find(params[:format])
  end
  def create
    price=@item.price
    @purchase = Purchase.new(price: price(purchase_params[:price]))
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
    params.permit(:price, :token)
  end

  def pay_item
    Payjp.api_key = "sk_test_17553915fcd272ad285f7d1e"  # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount: order_params[:price],  # 商品の値段
      card: order_params[:token],    # カードトークン
      currency:'jpy'                 # 通貨の種類(日本円)
    )
  end
end
