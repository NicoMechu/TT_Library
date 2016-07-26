ActiveAdmin.register User do

 permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip, :created_at, :updated_at
 
 index do
  selectable_column
  column :email
  column :created_at
  column :last_sign_in_at
  column :reset_password_sent_at
  actions
 end

  filter :email
  filter :created_at
  filter :last_sign_in_at
  filter :reset_password_sent_at

  form do |f|
    f.inputs "User details" do
      f.input :email
    end
    f.actions
  end

end
