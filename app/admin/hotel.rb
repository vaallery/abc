ActiveAdmin.register Hotel do
  menu parent: 'Отели', priority: 1

  filter :direction
  filter :hotel_category
  filter :name
  filter :phone
  filter :address
  filter :active

  index do
    selectable_column
    column :name
    column :slug
    column :hotel_category
    column :phone
    column :address
    column :latitude
    column :longitude
    column :active
    actions
  end

  action_item only: [:show] do
    link_to 'Добавить номер', new_admin_hotel_room_path(hotel)
  end

  require_dependency 'hotels/show'
  require_dependency 'hotels/form'
  require_dependency 'hotels/controller'
end
