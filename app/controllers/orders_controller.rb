class OrdersController < ApplicationController
  def index
    @orders = Order.all.order(:created_at).reverse
  end

  def new
    @order = Order.new
    if params[:product_id]
      @product = Product.find_by(id: params[:product_id])
    end
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      OrderMailer.order_email(@order).deliver
      redirect_to products_path, :notice => "Thanks for your order! A confirmation email was sent to #{@order.email}."
    else
      @first_name = params[:first_name]
      redirect_to new_order_path(@order.product), :notice => @order.errors.full_messages
    end
  end

  def destroy
    @order.destroy
    redirect_to orders_url
  end

  private
    def order_params
      params.require(:order).permit(:first_name, :last_name, :email, :credit_card, :expiration, :product_id)
    end

end

