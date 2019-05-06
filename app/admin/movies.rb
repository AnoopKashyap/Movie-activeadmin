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
     column :stars
     column :user_comments
     actions
   end

   show do
    attributes_table do
     row :name
     row :release_date
     row :short_description
     row :description
     row :genre
     row :stars
     row :user_comments
    end
  end

  form do |f|
    f.inputs "Add/Edit Movie" do
      f.input :name
      f.input :release_date
      f.input :short_description
      f.input :description
      f.input :genre
      f.has_many :stars do |star|
          star.input :role
          star.input :name
      end
      actions
    end
  end

  filter :stars
  filter :genre, as: :select, collection: {'Action' => 0, 'Love' => 1, 'Drama' => 2, 'Comedy' => 3, 'Thriller' => 4}
  filter :recommended, as: :check_boxes
  filter :age_bar
  filter :created_at
  filter :updated_at

  # form do |f|
  #   f.inputs "Movie Details" do
  #       f.input :name
  #   end
  
  #   f.has_many :stars do |star|
  #     star.inputs "Stars" do
  #       star.input :name
  #       #repeat as necessary for all fields
  #     end
  #   end
  # end

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
