class CartsController < ApplicationController
	def show
		@Producers = Producer.all
		@Categories = Category.all
		
		@Categories.each do |t|
				@list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
		end
		@Producers.each do |t|
				@list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
		end

		@param1 = params[:param1]
		@param2 = params[:param2]
		if @param1="All"
					@listproduct= Product.joins(:category,:producer).where(['producers.name= ?',@param2]).page params[:page]
		else
				@listproduct= Product.joins(:category,:producer).where(['producers.name= ? and categories.name= ?',@param2, @param1]).page params[:page]
		end
	@order_items = current_order.order_items
	end

	def new
		@order = Order.create
		  session[:order_id] = @order.id
		  @order
		  redirect_to root_path
	  end
end
