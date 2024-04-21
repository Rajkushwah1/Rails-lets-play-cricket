ActiveAdmin.register Contest do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :contest_name, :match_id

  form do |f|
    f.inputs do
      f.input :match_id, as: :select, collection: Match.ids
      f.input :contest_name
      f.actions
    end
  end
  # 
  # or
  #
  # permit_params do
  #   permitted = [:contest_name, :match_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  
end
