class ProductAdimController < ApplicationController
    def index
        @Producers = Producer.all
        @Categories = Category.all
       
        @Categories.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @Producers.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end

        @listproduct= Product.all.order(updated_at: :desc).page params[:page]
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

    def edit
        @Producers = Producer.all
        @Categories = Category.all
       
        @Categories.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @Producers.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end
        @product_adim = Product.find(params[:id])
    end
    
    def update
        @Producers = Producer.all
        @Categories = Category.all
       
        @Categories.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @Producers.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end

        @product_adim = Product.find(params[:id])
    
        if @product_adim.update(product_params)
          redirect_to product_adim_index_path
        else
          render 'edit'
        end
    end

    def show
        @id = params[:param1]
        @name = params[:param2]
        @image = params[:param3]
    end

    def create
        @Producers = Producer.all
        @Categories = Category.all
       
        @Categories.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @Producers.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end

        @product = Product.new(product_params)
        if @product.save
          redirect_to product_adim_index_path
        else
          p @product.errors.full_messages
          render 'new'
        end
    end

    def product_params
        p params.require( :product_adim).permit(:cpu, :ram, :memory,:vga, :front_camera, :back_camera,:os,:bluetooth,:screen,:pin,:price,:weight,:category_id,:producer_id, :status,:numofbuy,:name,{images: []} ) 
    end
end
