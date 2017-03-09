ActiveAdmin.register Product do

  permit_params :vendor_code,:title, :description, :price, :category_id, :brand_id, {images: []}

  index do
    selectable_column
    id_column
    column :vendor_code
    column :title
    column :price
    column :category_id do |article|
      article.category.title if article.category.present?
    end
    column :brand_id do | item |
      item.brand.title if item.brand.present?
    end
    column :description
    column :images do |item|
      image_tag(item.images[0].url(:main_thumb))
    end
    actions
  end

  show do
    attributes_table do
      row :vendor_code
      row :title
      row :description
      row :price
      row :category_id
      row :brand_id
      row :images do
        ul do
          product.images.each do |image|
            li do
              image_tag(image.url(:large))
            end
          end
        end
      end
    end
  end
  form(:html => { :multipart => true }) do |f|
    inputs 'Details' do
      f.input :vendor_code
      f.input :title
      f.input :description
      f.input :price
      f.input :images, as: :file, input_html: { multiple: true }
      f.input :category_id, as: :select, collection: Category.all, prompt: 'Выберите категорию товара'
      f.input :brand_id, as: :select, collection: Brand.all, prompt: 'Выберите бренд'
    end

    f.actions
  end

  filter :title
  filter :created_at

end
