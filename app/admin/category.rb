ActiveAdmin.register Category do

  permit_params :title, :ancestry
  index do
    selectable_column
    id_column
    column :title
    actions
  end
  show do
    attributes_table do
      row :title
    end
  end
  form do |f|
    inputs 'Details' do
      f.input :title
      f.input :ancestry, :as => :select, :collection => Category.all.map {|u| [u.title, u.id]}
    end

    f.actions
  end

  filter :title
  filter :created_at

end
