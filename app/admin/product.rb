ActiveAdmin.register Product do

  permit_params :title, :description, :price, :image, :category_id

  index do
    selectable_column
    id_column
    column :title
    column :description
    column :price
    column :image
    column :category_id do |article|
      article.category.title if article.category.present?
    end

    actions
  end

  show do
    attributes_table do
      row :title
      row :description
      row :price
      row :image
      row :category_id
    end
  end
  form do |f|
    inputs 'Details' do
      f.input :title
      f.input :description
      f.input :price
      f.input :image, as: :file
      f.input :category_id, as: :select, collection: Category.all, prompt: 'Выберите категорию товара'
    end

    f.actions
  end

  filter :title
  filter :created_at

end
