class HomeController < ApplicationController
    def index
        @Num_of_item_recommend = 2
        
        @products = Product.all
        @order_item = current_order.order_items.new

        @Categories = Category.all
        
        @Producers = Producer.all
        
        @Products = Product.all.order(updated_at: :desc).limit(9)

        @Recommended = Product.all.order(:id)

        @Categories.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
            @Products_categories = Array(@Products_categories).push(Product.all.where(category_id: t.id).limit(4))
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
    end 
end
