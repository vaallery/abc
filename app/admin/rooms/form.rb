ActiveAdmin.register Room do
  form do |f|
    f.semantic_errors *f.object.errors.keys
    panel 'Основные' do
      f.inputs do
        f.input :name
        f.input :square
        f.input :rooms
        f.input :bed
        f.input :bed1
        f.input :bed2
        f.input :additional_bed
        f.input :active
        br
        f.input :services, as: :check_boxes, collection: Service.for_room.all
        f.input :description, as: :ckeditor, label: false, input_html: { ckeditor: { toolbar: 'mini' } }
      end
    end
    panel 'Конфигурации' do
      f.inputs do
        f.has_many :configurations, allow_destroy: true, new_record: 'Добавить конфигурацию' do |ff|
          ff.input :cost
          ff.input :guests_count
          ff.input :stay_time
          ff.input :active
          ff.input :services, as: :check_boxes, collection: Service.for_configuration.all
        end
      end
    end
    panel 'Фотографии' do
      render '/admin/common/images', resource: room
      br
      f.inputs do
        f.input :images, as: :file, label: false, input_html: { multiple: true }
      end
    end

    f.actions do
      f.action :submit, label: 'Сохранить'
      f.action :cancel, label: 'Отмена',
                        url: admin_hotel_path(resource.hotel),
                        wrapper_html: { class: 'cancel' }
    end
  end
end
