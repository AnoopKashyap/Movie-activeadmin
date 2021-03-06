ActiveAdmin.register Star do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
 index do
    selectable_column
    id_column
    column :name
    column :role
    column :description
    actions
  end

  filter :movies
  filter :name
  filter :role, as: :select, collection: {'Hero' => 0, 'Heroine' => 1, 'Director' => 2, 'Producer' => 3, 'Suppoting actor' => 4}
  filter :created_at
  filter :updated_at
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
