ActiveAdmin.register Author do

permit_params :first_name, :last_name, :books

  index do
    selectable_column
    column :first_name
    column :last_name
    actions
  end

  filter :first_name
  filter :last_name

  form do |f|
    f.inputs "Author details" do
      f.input :first_name
      f.input :last_name
    end
    f.has_many :books do |b|
      b.input :title
    end
    f.actions
  end

end
