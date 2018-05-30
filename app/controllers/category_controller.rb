class CategoryController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
    def index
        @Producers = Producer.all
        @category = Category.all
       
        @category.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @Producers.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end
       
    end
    
    def show
    end

    def new
        @Producers = Producer.all
        @Categories = Category.all
        @category = Category.new
       
        @Categories.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @Producers.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end
       
    end
    
    def edit
        @Producers = Producer.all
        @category = Category.all
       
        @category.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @category.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end
        @categories = Category.find(params[:id])
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

        @category = Category.new(category_params)
        if @category.save
            flash[:notice] = "Add new category successfull!"
            redirect_to action:"index"
        else
            flash[:notice] = "Add new category not successfull!"
            render action: "new"
        end
    end
   
    def update
        @category = Category.find(params[:id])
        if @category.update_attributes(category_params)
            flash[:notice] = "Update new category successfull!"
            redirect_to action:"index"
        else
            flash[:notice] = "Update new category not successfull!"
            render action: "edit"
        end
    end
  
    def destroy
        @category = Category.find(params[:id])
        @category.destroy
        flash[:notice] = "Delete this category successfull!"
        redirect_to action:"index"
    end
    private
  
    def category_params
            params.require(:category).permit(:name,:image)
        end
end
