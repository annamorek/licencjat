ActiveAdmin.register Word do
  permit_params :name, :translation, :displayed, :category_id, :mail
end