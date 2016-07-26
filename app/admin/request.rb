ActiveAdmin.register Request, as: 'Book_Requests' do
  
  permit_params :status, :book_id, :user_id

  index do
    column :user
    column :book
    column :status do |req| 
      status_tag req.status, case req.status 
        when 'canceled'
          :red
        when 'pending'
          :orange
        when 'accepted'
          :green
        when 'returned'
          :gray
        end
    end
    actions
  end

  filter :status
  filter :book
  filter :user

  form do |f|
    f.inputs "Request Details" do
      f.input :user
      f.input :book
      f.input :status, as: :select, include_blank: false 
    end
    f.actions
  end

end
