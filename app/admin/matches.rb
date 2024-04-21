ActiveAdmin.register Match do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :match_no, team_ids: []
  form do |f|
    f.inputs :match_no
    f.inputs "Teams" do # Make a panel that holds inputs for lifestyles
      f.input :team_id, as: :check_boxes, collection: Team.all # Use formtastic to output my collection of checkboxes
    end
    f.actions # Include the default actions
  end

  show do |product|
    attributes_table do
      row :match_no
      table_for match.teams do
        column "teams" do |t|
           t.teamname
        end
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:match_no]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  

  controller do 
    def create
      mat = Match.create(match_no: params[:match][:match_no])
      teams = Team.where(id: params[:match][:team_id])
      mat.teams << teams
      redirect_to (admin_matches_path),notice: "match created successfully!"
    end 

  end
end
