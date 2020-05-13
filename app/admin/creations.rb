ActiveAdmin.register Creation do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  show do
    h3 creation.name
    attributes_table do
      row :name
      row :summary
      row :photos do
        ul do
          creation.photos.each do |p|
            li do
              image_tag p.url, height: '100px', width: '100px'
            end
          end
        end
      end
    end
  end

  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :creator_id, :photos,
    photos_attributes: [:url]

  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :creator_id, :photos]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
