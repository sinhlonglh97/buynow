class UsersController < ApplicationController
  
    def index
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
        @User = Account.all
    end

    def edit
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

        @user = Account.find(params[:id])
    end

    def update
        @user = Account.find(params[:id])
        if @user.update(user_param)
            redirect_to root_path

        else
            render 'edit'
        end
    end

    def user_param
        params.require(:user).permit(:name, :address, :phone)
    end
end
