ActiveAdmin.register Request do

  permit_params :satus

  index do
    column :user
    column :book
    column :status
  end

  filter :status
  filter :book
  filter :user



end
