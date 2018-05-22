ActiveAdmin.register Service do
  permit_params :name, :tag, :description, :for_hotel, :for_room, :for_configuration, :active
  menu parent: 'Настройки', priority: 3

  action_item :create, only: :show do
    link_to 'Создать сервис', new_admin_service_path
  end
end
