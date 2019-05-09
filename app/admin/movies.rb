ActiveAdmin.register Movie do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
 #permit_params :name, :role, :age, :description

  index do
     selectable_column
     id_column
     column :name
     column :release_date
     column :short_description
     column :description
     column :genre
     column :recommended
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
     row :recommended
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
      f.input :recommended
      f.has_many :stars do |star|
          star.input :role
          star.input :name
      end
      actions
    end
  end

  filter :stars_id, as: :string , label: 'Star id'
  filter :stars
  filter :genre, as: :select, collection: {'Action' => 0, 'Love' => 1, 'Drama' => 2, 'Comedy' => 3, 'Thriller' => 4}
  filter :recommended, as: :check_boxes
  filter :age_bar
  filter :created_at
  filter :updated_at

end
