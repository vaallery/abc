ActiveAdmin.register Room do

  actions :all, except: :show

  belongs_to :hotel
  navigation_menu :hotel

  index do
    selectable_column
    column :name
    column :square
    column :bed1
    column :bed2
    column :rooms
    column :additional_bed
    column :active
    column :archive
    actions
  end

  require_dependency 'rooms/form'
  require_dependency 'rooms/controller'

end
