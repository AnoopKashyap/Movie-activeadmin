ActiveAdmin.register Movie do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 #permit_params :name, :role, :age, :description
  index do
     selectable_column
     id_column
     column :name
     column :release_date
     column :short_description
     column :description
     column :genre
     actions
   end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
