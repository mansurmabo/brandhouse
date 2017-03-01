class Product < ActiveRecord::Base
  belongs_to :category, counter_cache: :products_count
  mount_uploaders :images, ImageUploader
end