class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include ApplicationHelper
    
    def index
        @Producers = Producer.all
        @Categories = Category.all
        @Categories.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @Producers.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end
        @order = current_order
        @order_items = current_order.order_items
        @listproduct= Product.all.order(:updated_at).page params[:page]
    end

 

    module ContentHelper
        def resource_name
          :user
        end
       
        def resource
          @resource ||= User.new
        end
       
        def devise_mapping
          @devise_mapping ||= Devise.mappings[:user]
        end
      end
end
