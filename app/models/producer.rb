class Producer < ApplicationRecord
    has_many :products
    mount_uploader :image, ImageUploader
end
