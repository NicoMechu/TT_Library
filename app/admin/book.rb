ActiveAdmin.register Book do
  permit_params :title, :year, :description, :ISBN, :author_id


  index do
    selectable_column
    column :title
    column :auhtor do |book|
      link_to(book.author.last_name, admin_author_path(book.author))
    end 
    column :year
    column :ISBN
    column :description
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

end
