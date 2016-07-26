ActiveAdmin.register Comment, as: 'Message' do

  permit_params :message

  index do 
    selectable_column

    column :book do |com|
      link_to(com.book.title, admin_books_path(com.book))
    end

    column :user do |com|
      link_to(com.user.email, admin_user_path(com.book))
    end
    
    column :message
    actions
  end

  filter :book
  filter :user

  form do |f|
    f.imputs "Comment Details" do |f|
      f.input :book
      f.input :user
      f.input :message
    end
    f.actions
  end
end
