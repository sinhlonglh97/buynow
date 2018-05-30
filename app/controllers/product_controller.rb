class ProductController < ApplicationController
    def index
        @Producers = Producer.all
        @Categories = Category.all
        @order_item = current_order.order_items.new
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
    end

    def new
        @Categories = Category.all
        @Producers = Producer.all

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
    end

    def show
        @order_item = current_order.order_items.new
        @Num_of_item_recommend = 2
        @product  = Product.find(params[:id])
        @Recommended = Product.all.order(:id)
        @Categories = Category.all
        @Producers = Producer.all
        @actor = account_login
        @Comment = Comment.where(product_id: @product.id)
        
        @producer_name=Producer.where(id: @product.producer_id).pluck(:name)
        @product_same_producer=Product.where(producer_id: @product.producer_id).limit(4)
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


    end

    def create
        @product = Product.new(product_params)
        p @product
        if @product.save
          redirect_to @product
        else
          p @product.errors.full_messages
          render 'new'
        end
    end

    def comment_params
        p params.require(:comment).permit(:content, :product_id, :actor)
    end

    def account_login
        @actor = 'actor'
        if account_signed_in?
            @account = Account.where(id:current_account.id)
            @email = @account[0].email
            @emailsplit = @email.split('@')
            @actor = @emailsplit[0]
        end
        p @actor
    end

    def getcheck
        @c = params.require(:comment).permit(:check).values.to_a
        p @c[0].to_i
    end

    def product_params
        p params.require(:product).permit(:cpu, :ram, :memory,:vga, :front_camera, :back_camera,:os,:bluetooth,:screen,:pin,:price,:image,:weight,:category_id,:producer_id,:quantity,:name ) 
    end
end
