class Product < ActiveRecord::Base
  belongs_to :category, counter_cache: :products_count
  belongs_to :brand, counter_cache: :products_count
  mount_uploaders :images, ImageUploader
end