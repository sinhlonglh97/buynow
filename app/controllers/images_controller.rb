class ImagesController < ApplicationController
    before_action :set_product

    def create
      add_more_images(images_params[:images]))
      flash[:error] = "Failed uploading images" unless @product.save
      redirect_to :back
    end

    def destroy
        remove_image_at_index(params[:id].to_i)
        flash[:error] = "Failed deleting image" unless @product.save
        redirect_to :back
      end

    private
    def set_product
      @product = Product.find(params[:product_id])
    end
  
    def add_more_images(new_images)
      images = @product.images # copy images cũ
      images += new_images # Thêm image mới vào mảng images
      @product.assign_attributes(images: images) # gán lại vào thuộc tính images
    end

    def remove_image_at_index(index)
        remain_images = @product.images # copy images
        remain_images.delete_at(index) # delete image theo index
        @product.assign_attributes images: remain_images
    end

    def images_params
      params.require(:product_adim).permit({images: []})
    end
end
