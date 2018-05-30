class Product < ApplicationRecord
    belongs_to :producer
    belongs_to :category
    has_many :order_items
    mount_uploaders :images, ImageUploader
    paginates_per 12
end
