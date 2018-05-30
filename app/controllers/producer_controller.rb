class ProducerController < ApplicationController
    def show
        @id = params[:param1]
        @name = params[:param2]
        @image = params[:param3]
        
        #@producer = Producer.new(params[:param])
        # @pro = params[:param]
      end
    
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
      end
    
      def new
        @producer = Producer.new

        @Producers = Producer.all
        @Categories = Category.all
       
        @Categories.each do |t|
            @list= Array(@list).push(Category.joins(products: :producer).where(name: t.name).group('producers.name').pluck('producers.name'))
        end
        @Producers.each do |t|
            @list_number_product_of_producer = Array( @list_number_product_of_producer).push(Product.where(:producer_id =>t.id).count)
        end
      end

      def edit
        @producer=Producer.find(params[:id])
      end
    
      def create
        @producer = Producer.new(producer_params)
    
        if @producer.save
          redirect_to producer_index_path
        else
          p @producer.errors.full_messages
          render 'new'
        end
      end

      def update
        @producer = Producer.find(params[:id])
    
        if @producer.update(producer_params)
          redirect_to producer_index_path
        else
          render 'edit'
        end
      end
    
      def display
        @producers = Producer.all
      end
    
      private
      def producer_params
        params.require(:producer).permit(:name, :image)
      end
end
