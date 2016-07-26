ActiveAdmin.register Book do
  permit_params :title, :year, :description, :ISBN, :author_id

  index do
    selectable_column
    column :title
    column :author do |book|
      link_to(book.author.last_name, admin_author_path(book.author))
    end 
    column :year
    column :ISBN
    column :description
    actions
  end

  filter :title
  filter :author
  filter :year
  filter :ISBN

  form do |f|
  f.inputs "Book details" do
    f.input :title 
    f.input :author
    f.input :year
    f.input :ISBN
    f.input :description
  end
  f.actions
  end

end
