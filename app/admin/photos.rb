ActiveAdmin.register Photo do
  index do
    selectable_column
    id_column
    column :url do |p|
      link_to p.url
    end
    column :image do |p|
      image_tag p.url, height: '100px', width: '100px'
    end
    column :holder
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :url, :holder_type, :holder_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:url, :holder_type, :holder_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
