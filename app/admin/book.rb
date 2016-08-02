ActiveAdmin.register Book do
  permit_params :title, :year, :description, :ISBN, :author_id, :image

  index do
    selectable_column
    column :title
    column :author do |book|
      link_to(book.author, admin_author_path(book.author))
    end 
    column :year
    column :ISBN
    column :description
    column :image
    actions
  end

  filter :title
  filter :author
  filter :year
  filter :ISBN

  form do |f|
    f.inputs "Book details", :multipart => true  do
      f.input :title 
      f.input :author
      f.input :year
      f.input :ISBN
      f.input :description
      f.input :image_cache, :as => :hidden
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :year
      row :ISBN
      row :description
      row :author do |book|
        link_to(book.author, admin_author_path(book.author))
      end 
      row :image do |book|
        book.image.present? ? image_tag(book.image.url) : content_tag(:span, "no image yet")
      end
    end
  end
end
